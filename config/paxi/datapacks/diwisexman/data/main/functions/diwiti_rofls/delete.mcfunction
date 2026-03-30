execute as @e[tag=portal] at @s run tag @s add kill
execute as @e[tag=portal] at @s run forceload remove ~ ~
execute as @e[tag=portal] at @s run tag @s remove portal
summon area_effect_cloud ~ ~ ~ {Duration:999999999,Invisible:1b,Tags:["portal"]}