kill @e[type=slime,tag=revive_slime,limit=1]
execute at @e[type=armor_stand,tag=summon_slime,limit=1,sort=random] run summon minecraft:slime ~ ~ ~ {NoGravity:1b,Health:1.0F,Size:0,NoAI:1b}
scoreboard players set slime timer 0