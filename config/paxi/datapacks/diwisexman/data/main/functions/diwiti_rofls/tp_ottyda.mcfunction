particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.2 0.6 0.2 0.02 45 force @a[distance=..40]

execute if entity @e[type=minecraft:area_effect_cloud,tag=portal] run tp @s @e[limit=1,type=minecraft:area_effect_cloud,tag=portal]
execute unless entity @e[type=minecraft:area_effect_cloud,tag=portal] in minecraft:overworld run tp 0 300 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=portal] in minecraft:overworld run spreadplayers 0 0 100 1000 false @s
scoreboard players add @s[name=!Diwyti] fogkd 120
scoreboard players set @s tp 0