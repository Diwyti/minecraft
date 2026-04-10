particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.2 0.6 0.2 0.02 45 force @a[distance=..40]

tp @s 0 300 0
spreadplayers 0 0 100 5000 false @s
scoreboard players add @s fogkd 600
scoreboard players set @s tp 0