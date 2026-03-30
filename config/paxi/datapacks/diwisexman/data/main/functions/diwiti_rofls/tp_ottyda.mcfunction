particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.2 0.6 0.2 0.02 45 force @a[distance=..40]

tp @s @e[limit=1,type=minecraft:area_effect_cloud,tag=portal]
scoreboard players add @s[name=!Diwyti] fogkd 120
scoreboard players set @s tp 0