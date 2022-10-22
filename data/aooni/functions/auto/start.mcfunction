title @a title [{"text":"RTS","color":"red"},{"text":" 青鬼","color":"blue"},{"text":" START...","color":"green"}]
team join hiroshi @a[tag=hiroshi]
tag @a remove hiroshi
tp @a[team=hiroshi] -18 1 6

#timer
execute if score time_random timer matches 1 run scoreboard players set timerT timer 15600
execute if score time_random timer matches 2 run scoreboard players set timerT timer 18000
execute if score time_random timer matches 3 run scoreboard players set timerT timer 20400
execute if score time_random timer matches 4 run scoreboard players set timerT timer 22200
execute if score time_random timer matches 5 run scoreboard players set timerT timer 24000