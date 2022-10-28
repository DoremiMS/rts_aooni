scoreboard players set difficult game 0
tellraw @a [{"text":"[Admin] ゲームモードをイージーモードに変更しました","color":"green"}]
##sound
execute as @a at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~