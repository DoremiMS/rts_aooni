#Minecraft Aooni Datapack Created by DoremiMS
##Support by RedTownServer

#tick
##timer
scoreboard players operation timerM timer = timerT timer
scoreboard players operation timerM timer /= 1200 timer
scoreboard players operation timerS timer = timerT timer
scoreboard players operation timerS timer %= 1200 timer
scoreboard players operation timerS timer /= 20 timer
execute if score timerT timer >= 0 timer run scoreboard players remove timerT timer 1

##Aooni Select
execute as @a at @s if block ~ ~-1 ~ coal_block run tag @s add aooni_select_member
execute as @a at @s if block ~ ~-1 ~ acacia_planks run tag @s remove aooni_select_member

#Countdown
execute if score countdown_start game matches 1 run scoreboard players add countdown timer 1
execute if score countdown timer matches 120 run title @a title [{"text":">>> 3 <<<","color":"green"}]
execute if score countdown timer matches 126 run title @a title [{"text":" >> 3 << ","color":"green"}]
execute if score countdown timer matches 132 run title @a title [{"text":"  > 3 <","color":"green"}]
execute if score countdown timer matches 120 run execute as @a at @s run playsound block.anvil.place master @a ~ ~ ~
execute if score countdown timer matches 140 run title @a title [{"text":">>> 2 <<<","color":"yellow"}]
execute if score countdown timer matches 146 run title @a title [{"text":" >> 2 << ","color":"yellow"}]
execute if score countdown timer matches 152 run title @a title [{"text":"  > 2 <","color":"yellow"}]
execute if score countdown timer matches 140 run execute as @a at @s run playsound block.anvil.place master @a ~ ~ ~
execute if score countdown timer matches 160 run title @a title [{"text":">>> 1 <<<","color":"red"}]
execute if score countdown timer matches 166 run title @a title [{"text":" >> 1 << ","color":"red"}]
execute if score countdown timer matches 172 run title @a title [{"text":"  > 1 <","color":"red"}]
execute if score countdown timer matches 160 run execute as @a at @s run playsound block.anvil.place master @a ~ ~ ~
execute if score countdown timer matches 180 run function aooni:auto/start
execute if score countdown timer matches 280 run tellraw @a [{"text":"青鬼が動き出した...","color":"blue"}]
execute if score countdown timer matches 280 run setblock -53 2 17 air
execute if score countdown timer matches 281 run scoreboard players set countdown_start game 0
execute if score countdown timer matches 281 run scoreboard players set countdown timer 0

#Aooni Effect
effect give @a[scores={food=3..20},team=aooni] hunger 2 255 true
effect clear @a[scores={food=..3},team=aooni] hunger
execute as @a[scores={food=1},team=aooni] run effect give @s minecraft:saturation 1 1 true
effect give @a[team=aooni] minecraft:strength 10000 255 true
effect give @a[team=aooni] resistance 10000 255 true
effect give @a[team=aooni] invisibility 10000 255 true

#Finish処理
##Import
###残り人数
