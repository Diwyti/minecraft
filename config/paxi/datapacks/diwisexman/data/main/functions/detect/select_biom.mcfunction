execute unless biome ~ ~ ~ #minecraft:is_overworld run setblock ~ ~ ~ air destroy
execute as @e[tag=melon] unless biome ~ ~ ~ #minecraft:is_jungle unless biome ~ ~ ~ #minecraft:is_badlands run setblock ~ ~ ~ air destroy
execute if biome ~ ~ ~ #minecraft:is_ocean run setblock ~ ~ ~ air destroy
execute if biome ~ ~ ~ #minecraft:is_river run setblock ~ ~ ~ air destroy
execute if biome ~ ~ ~ #minecraft:is_beach run setblock ~ ~ ~ air destroy

execute as @e[tag=cocoa] unless biome ~ ~ ~ #minecraft:is_jungle unless biome ~ ~ ~ #minecraft:snow_golem_melts run setblock ~ ~ ~ air destroy

execute as @e[tag=sweet_berry] unless biome ~ ~ ~ #minecraft:spawns_cold_variant_frogs run setblock ~ ~ ~ air destroy
execute as @e[tag=wheat] if biome ~ ~ ~ #minecraft:snow_golem_melts run setblock ~ ~ ~ air destroy


execute as @e[tag=wheat] if biome ~ ~ ~ #minecraft:spawns_cold_variant_frogs run setblock ~ ~ ~ air destroy
execute as @e[tag=carrot] if biome ~ ~ ~ #minecraft:spawns_cold_variant_frogs run setblock ~ ~ ~ air destroy
execute as @e[tag=beetroots] if biome ~ ~ ~ #minecraft:spawns_cold_variant_frogs run setblock ~ ~ ~ air destroy
execute as @e[tag=potato] if biome ~ ~ ~ #minecraft:spawns_cold_variant_frogs run setblock ~ ~ ~ air destroy