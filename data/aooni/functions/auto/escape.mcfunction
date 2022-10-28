tellraw @a [{"selector":"@s","color":"aqua"},{"text":"さんが脱出しました！","color":"aqua"}]
team join escape @s
gamemode spectator @s
execute if entity @s[team=aooni] run tellraw @a [{"text":"あなたは脱出することが出来ません！","color":"red"}]