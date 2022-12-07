scoreboard players set add_aooni game 1
tellraw @a [{"text":"[Admin] 青鬼の途中追加をonにしました","color":"green"}]
##sound
execute as @a at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~