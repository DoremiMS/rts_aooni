scoreboard players set countdown_start game 1
tellraw @a [{"text":"========================","color":"dark_red"}]
tellraw @a [{"text":"  まもなくゲームを開始します...","color":"dark_red"}]
tellraw @a [{"text":"========================","color":"dark_red"}]
scoreboard players set @a deathcount 0
tag @a[team=] add hiroshi
difficulty normal

scoreboard players set @a kill_skeleton 0
scoreboard players set @a stoneButtonPresses 0
scoreboard players set @a have_b1_key 1
scoreboard players set @a have_5f_key 1
