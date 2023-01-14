title @a title [{"text":"RTS","color":"red"},{"text":" 青鬼","color":"blue"},{"text":" START...","color":"green"}]
scoreboard players set @a death_announce 0
scoreboard players set @a death 0
scoreboard players set @a open_chest-b1 0
scoreboard players set @a open_chest-1 0
scoreboard players set @a open_chest-2 0
scoreboard players set @a open_chest-3 0
scoreboard players set @a open_chest-4 0
scoreboard players set @s have_5f_key 0
scoreboard players set @s have_b1_key 0
team join hiroshi @a[tag=hiroshi]
tag @a remove hiroshi
tp @a[team=hiroshi] -18 1 6
scoreboard players set ゲーム中 game 1
fill -205 77 -74 -205 77 -65 air replace
#timer
##13 15 17 18.5 20
scoreboard players operation time_random_set timer = time_random timer
execute if score time_random_set timer matches 1 run scoreboard players set timerT timer 15600
execute if score time_random_set timer matches 2 run scoreboard players set timerT timer 18000
execute if score time_random_set timer matches 3 run scoreboard players set timerT timer 20400
execute if score time_random_set timer matches 4 run scoreboard players set timerT timer 22200
execute if score time_random_set timer matches 5 run scoreboard players set timerT timer 24000