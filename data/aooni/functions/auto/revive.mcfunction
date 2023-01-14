scoreboard players set @s deathcount 0
scoreboard players set @s death_announce 0
tellraw @a [{"selector":"@s"},{"text":"さんが"},{"text":"復活","color":"yellow"},{"text":"しました。","color":"white"}]
team join hiroshi @s
tp @s @e[type=armor_stand,limit=1,tag=revive,sort=nearest]
execute if score @s have_b1_key matches 1 run function aooni:auto/game/system/give_b1_keys
execute if score @s have_5f_key matches 1 run function aooni:auto/game/system/give_5f_keys