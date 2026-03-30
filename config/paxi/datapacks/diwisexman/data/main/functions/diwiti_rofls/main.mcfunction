scoreboard players enable Diwyti crt
scoreboard players enable Diwyti spc
scoreboard players enable Diwyti sur

scoreboard players enable Diwyti tp

execute if score Diwyti spc matches 1.. run gamemode spectator Diwyti
execute if score Diwyti crt matches 1.. run gamemode creative Diwyti
execute if score Diwyti sur matches 1.. run gamemode survival Diwyti


execute as Diwyti at @s if score Diwyti tp matches 1.. if dimension minecraft:in_the_fog run function main:diwiti_rofls/tp_ottyda


execute as Diwyti at @s if dimension minecraft:overworld run execute at Diwyti as @s if score Diwyti tp matches 1.. run forceload add ~ ~
execute as Diwyti at @s if dimension minecraft:overworld run execute at Diwyti as @s if score Diwyti tp matches 1.. run function main:diwiti_rofls/delete
execute as Diwyti at @s if dimension minecraft:overworld run execute at Diwyti as @a[distance=..3.5] if score Diwyti tp matches 1.. run function main:diwiti_rofls/tp_tyda




execute if score Diwyti spc matches 1.. at Diwyti run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.2 0.6 0.2 0.01 25 normal
execute if score Diwyti crt matches 1.. at Diwyti run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.2 0.6 0.2 0.01 25 normal
execute if score Diwyti sur matches 1.. at Diwyti run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.2 0.6 0.2 0.01 25 normal

scoreboard players set Diwyti crt 0
scoreboard players set Diwyti tp 0
scoreboard players set Diwyti spc 0
scoreboard players set Diwyti sur 0