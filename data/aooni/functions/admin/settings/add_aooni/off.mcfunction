scoreboard players set add_aooni game 0
tellraw @a [{"text":"[Admin] 青鬼の途中追加をoffにしました","color":"green"}]
##sound
execute as @a at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~