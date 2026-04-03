title @a actionbar {"text":"\u0441\u0435\u0440\u0432\u0435\u0440 \u043f\u0435\u0440\u0435\u0437\u0430\u0433\u0440\u0443\u0436\u0435\u043d"}
function main:detect/select_plant
function main:diwiti_rofls/3s


scoreboard objectives add rcats_select dummy
scoreboard objectives add plant_lim dummy
scoreboard objectives add tick_plant dummy
scoreboard objectives add fish_roll dummy
scoreboard objectives add fishing minecraft.custom:minecraft.fish_caught
scoreboard objectives add fogkd dummy

scoreboard objectives add rcast_kastil dummy
scoreboard objectives add main dummy
scoreboard objectives add sur trigger
scoreboard objectives add crt trigger
scoreboard objectives add spc trigger

scoreboard objectives add tp trigger

scoreboard objectives add fog dummy

execute in minecraft:in_the_fog run forceload add -35 -35 35 35

difficulty hard

scoreboard objectives add end_chest minecraft.custom:minecraft.open_enderchest

#gamerule reducedDebugInfo true