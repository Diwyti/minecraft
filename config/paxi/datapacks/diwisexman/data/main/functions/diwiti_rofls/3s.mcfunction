schedule function main:diwiti_rofls/3s 3s
execute as @e[tag=portal] at @s run particle minecraft:campfire_signal_smoke ~ ~ ~ 0 1 0 0.05 0 normal
scoreboard players add @a fogkd 1
execute in minecraft:in_the_fog unless entity @e[tag=portal_ot] align xz positioned 0 200 0 positioned over motion_blocking_no_leaves run summon area_effect_cloud 0 ~1 0 {Duration:999999999,Invisible:1b,Tags:["portal_ot"]}

execute as @e[tag=portal_ot] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.05 5 force @a[distance=..20]

execute in minecraft:in_the_fog as @a[distance=550..] at @s run function main:diwiti_rofls/tp_ottyda
execute in minecraft:in_the_fog as @a[distance=500..] at @s run particle minecraft:smoke ~ ~1.4 ~ 0 0 0 0.04 5 force @a
execute in minecraft:in_the_fog as @a[distance=500..] at @s run particle minecraft:campfire_signal_smoke ~ ~1.4 ~ 3 3 3 0.04 5 force @a