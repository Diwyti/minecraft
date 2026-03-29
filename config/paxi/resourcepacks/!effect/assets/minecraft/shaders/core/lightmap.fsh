#version 150

// ===== USER TUNING =====
// Минимальная яркость (только дно теней)
const float SHADOW_FLOOR = 0.05;

// Экспозиция дня (только skylight)
const float DAY_EXPOSURE = 1.35;

// Усиление block light (факелы). 1.0 = ваниль. Пробуй 1.4–3.0
const float BLOCK_STRENGTH = 1.6;

// Нелинейность усиления: чем выше, тем сильнее “HDR-центр” (2–8 обычно)
const float BLOCK_BOOST_POWER = 3.0;

// Контраст (после гаммы)
const float LIGHT_CONTRAST = 0.9;

// ===== LIGHT COLOR TUNING =====
// Цвет block light (факелы/лампы): 1,1,1 = нейтрально
const vec3  BLOCK_LIGHT_COLOR     = vec3(1.00, 0.9058, 0.6509);
const float BLOCK_COLOR_STRENGTH  = 1.0; // 0..1

// Цвет sky light (небо/луна): 1,1,1 = нейтрально
const vec3  SKY_LIGHT_COLOR       = vec3(0.8705, 0.8705, 1.00);
const float SKY_COLOR_STRENGTH    = 1.0; // 0..1

uniform float AmbientLightFactor;
uniform float SkyFactor;
uniform float BlockFactor;
uniform int   UseBrightLightmap;

uniform vec3  SkyLightColor;
uniform float NightVisionFactor;
uniform float DarknessScale;
uniform float DarkenWorldFactor;
uniform float BrightnessFactor;

in  vec2 texCoord;
out vec4 fragColor;

float get_brightness(float level)
{
	float curved_level = level / (4.0 - 3.0 * level);
	return mix(curved_level, 1.0, AmbientLightFactor);
}

vec3 notGamma(vec3 value)
{
	vec3 inverted = 1.0 - value;
	return 1.0 - inverted * inverted * inverted * inverted;
}

void main()
{
	float block_level = floor(texCoord.x * 16.0) / 15.0;
	float sky_level   = floor(texCoord.y * 16.0) / 15.0;

	float block_brightness = get_brightness(block_level) * BlockFactor;
	float sky_brightness   = get_brightness(sky_level) * SkyFactor;

	// ===== DAY_EXPOSURE (skylight only) =====
	sky_brightness = clamp(sky_brightness * DAY_EXPOSURE, 0.0, 1.0);

	// ===== BLOCK BOOST (smart) =====
	if (UseBrightLightmap == 0)
	{
		float b       = clamp(block_brightness, 0.0, 1.0);
		float boosted = 1.0 - pow(1.0 - b, BLOCK_BOOST_POWER);
		float t       = clamp(BLOCK_STRENGTH - 1.0, 0.0, 2.5);

		block_brightness = mix(b, boosted, t);
	}

	// ===== VANILLA COLOR BUILD =====
	vec3 color = vec3(
		block_brightness,
		block_brightness * ((block_brightness * 0.6 + 0.4) * 0.6 + 0.4),
		block_brightness * (block_brightness * block_brightness * 0.6 + 0.4)
	);

	// ===== COLOR: BLOCK LIGHT =====
	float blockMask = clamp(block_brightness, 0.0, 1.0) * BLOCK_COLOR_STRENGTH;
	color *= mix(vec3(1.0), BLOCK_LIGHT_COLOR, blockMask);

	if (UseBrightLightmap != 0)
	{
		color = mix(color, vec3(0.99, 1.12, 1.0), 0.25);
		color = clamp(color, 0.0, 1.0);
	}
	else
	{
		// ===== COLOR: SKY LIGHT =====
		vec3 skyAdd = SkyLightColor * sky_brightness;
		skyAdd *= mix(vec3(1.0), SKY_LIGHT_COLOR, SKY_COLOR_STRENGTH);

		color += skyAdd;
		color  = mix(color, vec3(0.75), 0.04);

		vec3 darkened_color = color * vec3(0.7, 0.6, 0.6);
		color = mix(color, darkened_color, DarkenWorldFactor);
	}

	if (NightVisionFactor > 0.0)
	{
		float max_component = max(color.r, max(color.g, color.b));
		if (max_component > 0.0 && max_component < 1.0)
		{
			vec3 bright_color = color / max_component;
			color = mix(color, bright_color, NightVisionFactor);
		}
	}

	if (UseBrightLightmap == 0)
	{
		color = clamp(color - vec3(DarknessScale), 0.0, 1.0);
	}

	vec3 ng = notGamma(color);
	color = mix(color, ng, BrightnessFactor);

	// ===== CONTRAST + SHADOW FLOOR =====
	color = pow(color, vec3(LIGHT_CONTRAST));
	color = max(color, vec3(SHADOW_FLOOR));
	color = clamp(color, 0.0, 1.0);

	fragColor = vec4(color, 1.0);
}
