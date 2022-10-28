tellraw @a [{"text":"[Admin] ゲームモードをチェスト開放型に設定しました","color":"green"}]
scoreboard players set gamemode game 2
##sound
execute as @a at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~