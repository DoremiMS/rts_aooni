title @a title [{"text":"終"},{"text":"了","color":"blue"}]
title @a subtitle [{"text":"GAME END"}]
scoreboard players set finish_count game 1
scoreboard players set ゲーム中 game 0
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~
fill -205 77 -74 -205 77 -65 lapis_block replace
team leave @a
effect clear @s
difficulty peaceful
clear @a