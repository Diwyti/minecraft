execute as @e[type=minecraft:fishing_bobber] at @s if block ~ ~ ~ minecraft:water unless entity @e[type=minecraft:area_effect_cloud,distance=..3] run summon area_effect_cloud ~ ~ ~ {Duration:999999999,Invisible:1b,Tags:["fish"]}

execute as @p[scores={fishing=1..}] at @s store result score @s fish_roll run scoreboard players get fish_r main
execute as @e[type=minecraft:area_effect_cloud,tag=fish] at @s if entity @p[scores={fishing=1..,fish_roll=1},distance=..20] facing entity @p[scores={fish_roll=1}] eyes positioned ^ ^ ^0.1 anchored eyes summon minecraft:pufferfish run function main:fish/launch
execute as @e[type=minecraft:area_effect_cloud,tag=fish] at @s if entity @p[scores={fishing=1..},distance=..20] run scoreboard players set @a[distance=..23] fishing 0
execute as @e[type=minecraft:area_effect_cloud,tag=fish] at @s if entity @p[scores={fish_roll=1..},distance=..20] run scoreboard players set @a[distance=..23] fish_roll 0

function main:diwiti_rofls/main
execute as @e[type=minecraft:area_effect_cloud,tag=fish] at @s unless entity @e[type=minecraft:fishing_bobber,distance=..3] run kill @s


execute as @a[name=!Diwyti] at @s if biome ~ ~ ~ minecraft:in_the_fog run scoreboard players add @s fog 1
execute as @a[scores={fog=0..}] at @s unless biome ~ ~ ~ minecraft:in_the_fog run scoreboard players remove @s fog 1
execute as @a[scores={fog=20000..21000}] at @s run function main:fish/sheep


scoreboard players add fish_r main 1
execute if score fish_r main matches 50.. run scoreboard players set fish_r main 0



