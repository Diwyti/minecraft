execute unless biome ~ ~ ~ #minecraft:is_overworld run setblock ~ ~ ~ air destroy
execute as @s[tag=melon] unless biome ~ ~ ~ #minecraft:is_jungle unless biome ~ ~ ~ #minecraft:is_badlands run setblock ~ ~ ~ air destroy
execute if biome ~ ~ ~ #minecraft:is_ocean run setblock ~ ~ ~ air destroy
execute if biome ~ ~ ~ #minecraft:is_river run setblock ~ ~ ~ air destroy
execute if biome ~ ~ ~ #minecraft:is_beach run setblock ~ ~ ~ air destroy

execute as @s[tag=cocoa] unless biome ~ ~ ~ #minecraft:is_jungle unless biome ~ ~ ~ #minecraft:snow_golem_melts run setblock ~ ~ ~ air destroy

execute as @s[tag=sweet_berry] unless biome ~ ~ ~ #minecraft:spawns_cold_variant_frogs run setblock ~ ~ ~ air destroy
execute as @s[tag=wheat] if biome ~ ~ ~ #minecraft:snow_golem_melts run setblock ~ ~ ~ air destroy


execute as @s[tag=wheat] if biome ~ ~ ~ #minecraft:spawns_cold_variant_frogs run setblock ~ ~ ~ air destroy
execute as @s[tag=carrot] if biome ~ ~ ~ #minecraft:spawns_cold_variant_frogs run setblock ~ ~ ~ air destroy
execute as @s[tag=beetroots] if biome ~ ~ ~ #minecraft:spawns_cold_variant_frogs run setblock ~ ~ ~ air destroy
execute as @s[tag=potato] if biome ~ ~ ~ #minecraft:spawns_cold_variant_frogs run setblock ~ ~ ~ air destroy