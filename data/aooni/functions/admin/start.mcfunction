scoreboard players set countdown_start game 1
tellraw @a [{"text":"========================","color":"dark_red"}]
tellraw @a [{"text":"  まもなくゲームを開始します...","color":"dark_red"}]
tellraw @a [{"text":"========================","color":"dark_red"}]
scoreboard players set @a deathcount 0
tag @a[team=] add hiroshi
difficulty normal

