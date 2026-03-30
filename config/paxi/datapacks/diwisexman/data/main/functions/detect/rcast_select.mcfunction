
scoreboard players add @s rcats_select 1


execute if score @s rcast_kastil matches 2 run function main:detect/rcast_select_done
execute if score @s rcast_kastil matches 2 run scoreboard players set @s rcats_select 0
scoreboard players set @s rcast_kastil 0

execute store result score @s rcast_kastil if block ~ ~ ~ #minecraft:plant run return 1
execute store result score @s rcast_kastil as @s if score @s rcats_select matches 30.. run return 2
execute positioned ^ ^ ^0.2 run function main:detect/rcast_select

execute if score @s rcast_kastil matches 1.. run function main:detect/rcast_select_done
scoreboard players set @s rcast_kastil 0