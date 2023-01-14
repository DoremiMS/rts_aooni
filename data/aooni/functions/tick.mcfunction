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
execute if score countdown timer matches 132 run title @a title [{"text":"  > 3 <  ","color":"green"}]
execute if score countdown timer matches 120 run execute as @a at @s run playsound block.anvil.place master @a ~ ~ ~
execute if score countdown timer matches 140 run title @a title [{"text":">>> 2 <<<","color":"yellow"}]
execute if score countdown timer matches 146 run title @a title [{"text":" >> 2 << ","color":"yellow"}]
execute if score countdown timer matches 152 run title @a title [{"text":"  > 2 <  ","color":"yellow"}]
execute if score countdown timer matches 140 run execute as @a at @s run playsound block.anvil.place master @a ~ ~ ~
execute if score countdown timer matches 160 run title @a title [{"text":">>> 1 <<<","color":"red"}]
execute if score countdown timer matches 166 run title @a title [{"text":" >> 1 << ","color":"red"}]
execute if score countdown timer matches 172 run title @a title [{"text":"  > 1 <  ","color":"red"}]
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

#Random Chest
##1F~4F
scoreboard players add 1_4_random chest 1
execute if score 1_4_random chest matches 21 run scoreboard players set 1_4_random chest 1
##B1
scoreboard players add b1_random chest 1
execute if score b1_random chest matches 13 run scoreboard players set b1_random chest 1
##vending machine
scoreboard players add vending_random chest 1
execute if score vending_random chest matches 9 run scoreboard players set vending_random chest 1

#Timer_Random
scoreboard players add time_random timer 1
execute if score time_random timer matches 6 run scoreboard players set time_random timer 1

#Open_b1
execute if score time_random_set timer matches 1 if score timerT timer matches 12000 run function aooni:auto/open/b1
execute if score time_random_set timer matches 2 if score timerT timer matches 13200 run function aooni:auto/open/b1
execute if score time_random_set timer matches 3 if score timerT timer matches 14400 run function aooni:auto/open/b1
execute if score time_random_set timer matches 4 if score timerT timer matches 15600 run function aooni:auto/open/b1
execute if score time_random_set timer matches 5 if score timerT timer matches 18000 run function aooni:auto/open/b1

#Open_5F
execute if score time_random_set timer matches 1 if score timerT timer matches 7200 run function aooni:auto/open/5f
execute if score time_random_set timer matches 2 if score timerT timer matches 9600 run function aooni:auto/open/5f
execute if score time_random_set timer matches 3 if score timerT timer matches 10800 run function aooni:auto/open/5f
execute if score time_random_set timer matches 4 if score timerT timer matches 12000 run function aooni:auto/open/5f
execute if score time_random_set timer matches 5 if score timerT timer matches 14400 run function aooni:auto/open/5f

#Add_Aooni
execute if score add_aooni game matches 1 if score time_random_set timer matches 1 if score timerT timer matches 7200 run execute as @r[team=death] run function aooni:auto/game/add_aooni
execute if score add_aooni game matches 1 if score time_random_set timer matches 2 if score timerT timer matches 9000 run execute as @r[team=death] run function aooni:auto/game/add_aooni
execute if score add_aooni game matches 1 if score time_random_set timer matches 3 if score timerT timer matches 10200 run execute as @r[team=death] run function aooni:auto/game/add_aooni
execute if score add_aooni game matches 1 if score time_random_set timer matches 4 if score timerT timer matches 11100 run execute as @r[team=death] run function aooni:auto/game/add_aooni
execute if score add_aooni game matches 1 if score time_random_set timer matches 5 if score timerT timer matches 12000 run execute as @r[team=death] run function aooni:auto/game/add_aooni

#Death_announce
execute as @a[scores={death_announce=1..},team=!death] run tellraw @a [{"selector":"@s"},{"text":"が青鬼に食べられた","color":"blue"}]

##確率ゲート
execute as @a[scores={death_announce=1..}] run tag @s remove gate1_clear
execute as @a[scores={death_announce=1..}] run tag @s remove gate2_clear
execute as @a[scores={death_announce=1..}] run tag @s remove gate3_clear
execute as @a[scores={death_announce=1..}] run tag @s remove gate_kill
execute as @a[scores={death_announce=1..},team=!death] run scoreboard players set @s death_announce 0

#athle
execute if score difficult game matches 0 as @a[scores={deathcount=3..},team=hiroshi] run team join death @s
execute if score difficult game matches 1 as @a[scores={deathcount=1..},team=hiroshi] run team join death @s

#spawnpoint
execute if score difficult game matches 0 run execute as @a[scores={deathcount=0..2},team=hiroshi] at @e[tag=revive,type=armor_stand,limit=1] run spawnpoint @s ~ ~ ~
execute if score difficult game matches 0 as @a[scores={deathcount=3..},team=hiroshi] at @e[tag=SPAWN_POINT,type=armor_stand,limit=1] run spawnpoint @s ~ ~ ~
execute if score difficult game matches 0 as @a[scores={deathcount=3..},team=death] at @e[tag=SPAWN_POINT,type=armor_stand,limit=1] run spawnpoint @s ~ ~ ~
execute if score difficult game matches 1 as @a[scores={deathcount=1..},team=hiroshi] at @e[tag=SPAWN_POINT,type=armor_stand,limit=1] run spawnpoint @s ~ ~ ~
execute if score difficult game matches 1 as @a[scores={deathcount=1..},team=death] at @e[tag=SPAWN_POINT,type=armor_stand,limit=1] run spawnpoint @s ~ ~ ~

#5F
##vending machine
###Start
execute if score start_vending game matches 0 if block -17 27 -18 lever[powered=true] run function aooni:auto/vending/start

###miss
#### 1
execute if score start_vending game matches 1 if score vending chest matches 1 if block -84 -5 -22 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_2,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 1 if block -28 2 20 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_3,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 1 if block -57 2 15 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_4,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 1 if block -13 2 -3 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_5,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 1 if block 17 8 -13 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_6,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 1 if block 1 14 -5 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_7,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 1 if block -29 20 -3 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_8,limit=1] as @p run function aooni:auto/vending/miss
#### 2
execute if score start_vending game matches 1 if score vending chest matches 2 if block -42 -5 46 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_1,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 2 if block -28 2 20 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_3,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 2 if block -57 2 15 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_4,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 2 if block -13 2 -3 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_5,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 2 if block 17 8 -13 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_6,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 2 if block 1 14 -5 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_7,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 2 if block -29 20 -3 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_8,limit=1] as @p run function aooni:auto/vending/miss
#### 3
execute if score start_vending game matches 1 if score vending chest matches 3 if block -42 -5 46 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_1,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 3 if block -84 -5 -22 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_2,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 3 if block -57 2 15 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_4,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 3 if block -13 2 -3 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_5,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 3 if block 17 8 -13 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_6,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 3 if block 1 14 -5 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_7,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 3 if block -29 20 -3 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_8,limit=1] as @p run function aooni:auto/vending/miss
#### 4
execute if score start_vending game matches 1 if score vending chest matches 4 if block -42 -5 46 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_1,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 4 if block -84 -5 -22 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_2,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 4 if block -28 2 20 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_3,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 4 if block -13 2 -3 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_5,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 4 if block 17 8 -13 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_6,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 4 if block 1 14 -5 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_7,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 4 if block -29 20 -3 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_8,limit=1] as @p run function aooni:auto/vending/miss
#### 5
execute if score start_vending game matches 1 if score vending chest matches 5 if block -42 -5 46 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_1,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 5 if block -84 -5 -22 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_2,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 5 if block -28 2 20 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_3,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 5 if block -57 2 15 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_4,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 5 if block 17 8 -13 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_6,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 5 if block 1 14 -5 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_7,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 5 if block -29 20 -3 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_8,limit=1] as @p run function aooni:auto/vending/miss
#### 6
execute if score start_vending game matches 1 if score vending chest matches 6 if block -42 -5 46 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_1,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 6 if block -84 -5 -22 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_2,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 6 if block -28 2 20 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_3,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 6 if block -57 2 15 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_4,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 6 if block -13 2 -3 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_5,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 6 if block 1 14 -5 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_7,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 6 if block -29 20 -3 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_8,limit=1] as @p run function aooni:auto/vending/miss
#### 7
execute if score start_vending game matches 1 if score vending chest matches 7 if block -42 -5 46 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_1,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 7 if block -84 -5 -22 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_2,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 7 if block -28 2 20 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_3,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 7 if block -57 2 15 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_4,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 7 if block -13 2 -3 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_5,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 7 if block 17 8 -13 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_6,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 7 if block -29 20 -3 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_8,limit=1] as @p run function aooni:auto/vending/miss
#### 8
execute if score start_vending game matches 1 if score vending chest matches 8 if block -42 -5 46 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_1,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 8 if block -84 -5 -22 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_2,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 8 if block -28 2 20 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_3,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 8 if block -57 2 15 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_4,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 8 if block -13 2 -3 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_5,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 8 if block 17 8 -13 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_6,limit=1] as @p run function aooni:auto/vending/miss
execute if score start_vending game matches 1 if score vending chest matches 8 if block 1 14 -5 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_7,limit=1] as @p run function aooni:auto/vending/miss

### hit
#### 1
execute if score start_vending game matches 1 if score vending chest matches 1 if block -42 -5 46 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_1,limit=1] as @p run function aooni:auto/vending/hit
#### 2
execute if score start_vending game matches 1 if score vending chest matches 2 if block -84 -5 -22 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_2,limit=1] as @p run function aooni:auto/vending/hit
#### 3
execute if score start_vending game matches 1 if score vending chest matches 3 if block -28 2 20 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_3,limit=1] as @p run function aooni:auto/vending/hit
#### 4
execute if score start_vending game matches 1 if score vending chest matches 4 if block -57 2 15 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_4,limit=1] as @p run function aooni:auto/vending/hit
#### 5
execute if score start_vending game matches 1 if score vending chest matches 5 if block -13 2 -3 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_5,limit=1] as @p run function aooni:auto/vending/hit
#### 6
execute if score start_vending game matches 1 if score vending chest matches 6 if block 17 8 -13 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_6,limit=1] as @p run function aooni:auto/vending/hit
#### 7
execute if score start_vending game matches 1 if score vending chest matches 7 if block 1 14 -5 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_7,limit=1] as @p run function aooni:auto/vending/hit
#### 8
execute if score start_vending game matches 1 if score vending chest matches 8 if block -29 20 -3 stone_button[powered=true] as @a if score @s stoneButtonPresses matches 1 as @a if score @s stoneButtonPresses matches 1 run execute at @e[type=armor_stand,tag=vending_8,limit=1] as @p run function aooni:auto/vending/hit

##open door
execute if block -15 26 -27 minecraft:oak_pressure_plate[powered=true] run setblock -21 24 -34 minecraft:redstone_block
execute if block -15 26 -27 minecraft:oak_pressure_plate[powered=false] run setblock -21 24 -34 minecraft:red_wool
execute if block -13 26 -35 minecraft:stone_pressure_plate[powered=true] run setblock -21 24 -35 minecraft:redstone_block
execute if block -13 26 -35 minecraft:stone_pressure_plate[powered=false] run setblock -21 24 -35 minecraft:red_wool
execute if block -15 26 -43 minecraft:oak_pressure_plate[powered=true] run setblock -21 24 -36 minecraft:redstone_block
execute if block -15 26 -43 minecraft:oak_pressure_plate[powered=false] run setblock -21 24 -36 minecraft:red_wool
execute if block -28 26 -43 minecraft:oak_pressure_plate[powered=true] run setblock -22 24 -36 minecraft:redstone_block
execute if block -28 26 -43 minecraft:oak_pressure_plate[powered=false] run setblock -22 24 -36 minecraft:red_wool
execute if block -30 26 -35 minecraft:stone_pressure_plate[powered=true] run setblock -22 24 -35 minecraft:redstone_block
execute if block -30 26 -35 minecraft:stone_pressure_plate[powered=false] run setblock -22 24 -35 minecraft:red_wool
execute if block -28 26 -27 minecraft:oak_pressure_plate[powered=true] run setblock -22 24 -34 minecraft:redstone_block
execute if block -28 26 -27 minecraft:oak_pressure_plate[powered=false] run setblock -22 24 -34 minecraft:red_wool
execute if block -22 24 -36 minecraft:redstone_block if block -22 24 -35 minecraft:redstone_block if block -22 24 -34 minecraft:redstone_block if block -21 24 -36 redstone_block if block -21 24 -35 redstone_block if block -21 24 -34 redstone_block run scoreboard players set 5f_6_open_door game 1
execute if score 5f_6_open_door game matches 1 run fill -21 24 -34 -22 24 -36 minecraft:redstone_block
execute if score 5f_6_open_door game matches 1 run setblock -22 24 -50 redstone_block
execute if score 5f_6_open_door game matches 0 run fill -21 24 -34 -22 24 -36 minecraft:red_wool
execute if score 5f_6_open_door game matches 0 run setblock -22 24 -50 red_wool

# Escape Key
execute as @a store result score @s have_key run clear @s light_blue_dye 0

# Game System
execute if score gamemode game matches 2 if score ゲーム中 game matches 1 run function aooni:auto/game/system/open_allchest

# Finish
execute if score timerT timer matches 100 run title @a title [{"text":"5"}]
execute if score timerT timer matches 100 as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
execute if score timerT timer matches 80 run title @a title [{"text":"4"}]
execute if score timerT timer matches 80 as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
execute if score timerT timer matches 60 run title @a title [{"text":"3"}]
execute if score timerT timer matches 60 as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
execute if score timerT timer matches 40 run title @a title [{"text":"2"}]
execute if score timerT timer matches 40 as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
execute if score timerT timer matches 20 run title @a title [{"text":"1"}]
execute if score timerT timer matches 20 as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
execute if score timerT timer matches 1 run function aooni:auto/finish

# Finish Timer
execute if score finish_count game matches 1 run scoreboard players add finishtime timer 1
execute if score finishtime timer matches 2 run tellraw @a [{"text":"15秒後にTPします。","color":"dark_red"}]
execute if score finishtime timer matches 300 run tp @a @e[tag=SPAWN_POINT,type=armor_stand,limit=1]
execute if score finishtime timer matches 300 run gamemode adventure @a
execute if score finishtime timer matches 300 run function aooni:reset
execute if score finishtime timer matches 301 run scoreboard players set finish_count game 0
execute if score finishtime timer matches 301 run scoreboard players set finishtime timer 0

# Revive RandomChance
## 1
execute as @a at @s if block ~ ~-1 ~ infested_stone_bricks if predicate aooni:25 run kill @s
## 2
execute as @a at @s if block ~ ~-1 ~ infested_cracked_stone_bricks if predicate aooni:50 run kill @s
## 3
execute as @a at @s if block ~ ~-1 ~ infested_mossy_stone_bricks if predicate aooni:75 run kill @s
# Aooni Run
execute as @a[team=aooni] at @s if block ~ ~-1 ~ minecraft:soul_soil run effect give @s speed 2 4 true

# Revive Slime
scoreboard players add slime timer 1
execute if score slime timer matches 100.. run function aooni:auto/summon_slime
## tp
execute as @a[scores={kill_slime=1..}] run tp @s -100 69 -82
## score reset
execute as @a[scores={kill_slime=1..}] run scoreboard players set @s kill_slime 0

#Finish処理
##Import
###残り人数
execute store result score 全体人数 players if entity @a
execute store result score 残り人数 players if entity @a[team=hiroshi]
###Finish
execute if score 残り人数 players matches 0 if score ゲーム中 game matches 1 run function aooni:auto/finish

data merge entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:light_blue_dye",Count:1b}}] {PickupDelay:0s}

