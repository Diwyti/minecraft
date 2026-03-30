
execute as @e[type=minecraft:area_effect_cloud,tag=plant] at @s unless block ~ ~ ~ #minecraft:plant run kill @s
execute as @a at @s positioned ~ ~1.8 ~ run function main:detect/rcast_select

execute as @e[type=minecraft:area_effect_cloud,tag=plant,tag=!tag_select] at @s run function main:detect/select_tag

execute as @e[type=minecraft:area_effect_cloud,tag=plant,scores={tick_plant=60}] at @s run function main:detect/select_biom

execute as @e[type=minecraft:area_effect_cloud,tag=plant,sort=random,limit=5] at @s store result score @s plant_lim run execute if entity @e[type=minecraft:area_effect_cloud,distance=..20]
execute as @e[type=minecraft:area_effect_cloud,tag=plant,scores={plant_lim=400..}] at @s run setblock ~ ~ ~ air destroy

execute as @e[tag=portal_ot] at @s run particle minecraft:reverse_portal ~ ~0.5 ~ 0.08 0.4 0.08 0 8 force @a

execute as @e[tag=portal] at @s run particle minecraft:campfire_cosy_smoke ~ ~0.2 ~ 0 0 0 0.005 2 normal
execute as @e[tag=portal] at @s run execute as @e[distance=0.1..1.2,name=!Diwyti,scores={fogkd=..0}] run function main:diwiti_rofls/tp_tyda
execute as @e[tag=portal_ot] at @s run execute as @e[distance=0.01..1.5] run function main:diwiti_rofls/tp_ottyda
execute as @e[tag=portal] at @s run forceload add ~ ~
kill @e[tag=kill]
scoreboard players remove @a[scores={fogkd=1..}] fogkd 1
schedule function main:detect/select_plant 10t
execute as @e[type=minecraft:area_effect_cloud,tag=plant,scores={tick_plant=..5}] at @s run function main:detect/select_plant_cascad
execute as @e[scores={tick_plant=12000..}] at @s run setblock ~ ~ ~ air
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=plant] tick_plant 1

execute as @a[scores={fog=20000..21000}] at @s run playsound minecraft:entity.sheep.death master @s ~ ~ ~ 100 0 1

execute as @a[scores={fog=20000..21000}] at @s if entity @e[type=minecraft:sheep,distance=..1.5] run damage @s 2 minecraft:magic

execute as @e[type=minecraft:chicken,sort=random,limit=15] at @s store result score @s plant_lim run execute if entity @e[type=minecraft:chicken,distance=..7]
execute as @e[type=minecraft:chicken,scores={plant_lim=15..}] at @s run particle minecraft:campfire_cosy_smoke ~ ~0.3 ~ 0.1 0.1 0.1 0.01 2 normal
execute as @e[type=minecraft:chicken,scores={plant_lim=15..}] at @s run damage @s 1 minecraft:magic


execute as @e[type=minecraft:cow,sort=random,limit=15] at @s store result score @s plant_lim run execute if entity @e[type=minecraft:cow,distance=..8]
execute as @e[type=minecraft:cow,scores={plant_lim=20..}] at @s run particle minecraft:campfire_cosy_smoke ~ ~0.6 ~ 0.1 0.1 0.1 0.01 2 normal
execute as @e[type=minecraft:cow,scores={plant_lim=20..}] at @s run damage @s 1 minecraft:magic


execute as @e[type=minecraft:sheep,sort=random,limit=15] at @s store result score @s plant_lim run execute if entity @e[type=minecraft:sheep,distance=..8]
execute as @e[type=minecraft:sheep,scores={plant_lim=20..}] at @s run particle minecraft:campfire_cosy_smoke ~ ~0.6 ~ 0.1 0.1 0.1 0.01 2 normal
execute as @e[type=minecraft:sheep,scores={plant_lim=20..}] at @s run damage @s 1 minecraft:magic

execute as @e[type=minecraft:pig,sort=random,limit=15] at @s store result score @s plant_lim run execute if entity @e[type=minecraft:pig,distance=..8]
execute as @e[type=minecraft:pig,scores={plant_lim=19..}] at @s run particle minecraft:campfire_cosy_smoke ~ ~0.5 ~ 0.1 0.1 0.1 0.01 2 normal
execute as @e[type=minecraft:pig,scores={plant_lim=19..}] at @s run damage @s 1 minecraft:magic


execute in minecraft:in_the_fog as @a[distance=550..] at @s run particle minecraft:campfire_signal_smoke ~ ~1.4 ~ 2 2 2 0.04 15 force @a
execute in minecraft:in_the_fog as @a[distance=530..] at @s run particle minecraft:campfire_signal_smoke ~ ~1.4 ~ 3 3 3 0.04 15 force @a