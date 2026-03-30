execute store result score .x velocity run data get entity @s Pos[0] 10000
execute store result score .y velocity run data get entity @s Pos[1] 10000
execute store result score .z velocity run data get entity @s Pos[2] 10000

tp @s ^ ^ ^0.1

execute store result score .dx velocity run data get entity @s Pos[0] 10000
execute store result score .dy velocity run data get entity @s Pos[1] 10000
execute store result score .dz velocity run data get entity @s Pos[2] 10000

execute store result entity @s Motion[0] double 0 run scoreboard players operation .dx velocity -= .x velocity
execute store result entity @s Motion[1] double 0 run scoreboard players operation .dy velocity -= .y velocity
execute store result entity @s Motion[2] double 0 run scoreboard players operation .dz velocity -= .z velocity

execute positioned 0.0 0.0 0.0 run tp @s ^ ^0.01 ^1.8
data modify storage test Motion set from entity @s Pos
tp @s ~ ~1 ~
data modify entity @s Motion set from storage test Motion
data merge entity @s {PuffState:2}