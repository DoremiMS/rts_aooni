tellraw @a [{"selector":"@s[team=!aooni]","color":"aqua"},{"text":"さんが脱出しました！","color":"aqua"}]
team join escape @s[team=!aooni]
gamemode spectator @s[team=!aooni]
execute if entity @s[team=aooni] run tellraw @a [{"text":"あなたは脱出することが出来ません！","color":"red"}]