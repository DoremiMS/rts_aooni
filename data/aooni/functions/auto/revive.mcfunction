scoreboard players set @s deathcount 0
scoreboard players set @s death_announce 0
tellraw @a [{"selector":"@s"},{"text":"さんが"},{"text":"復活","color":"yellow"},{"text":"しました。","color":"white"}]
tp @s @e[type=armor_stand,limit=1,tag=revive,sort=nearest]