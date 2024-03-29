#Game Reset
##Chest replace
# 4F
setblock -7 19 -15 air replace
setblock -45 20 -22 air replace
setblock -31 20 21 air replace
# 3F
setblock -33 13 -19 air replace
setblock 8 15 -20 air replace
setblock -25 14 -33 air replace
# 2F
setblock -24 8 0 air replace
setblock -9 8 -37 air replace
setblock -35 7 -30 air replace
setblock -40 8 6 air replace
# 1F
setblock -33 2 38 air replace
setblock -32 -1 38 air replace
setblock -40 4 32 air replace
setblock -36 2 -3 air replace
setblock -41 3 8 air replace
setblock -53 1 8 air replace
setblock -61 3 3 air replace
setblock -78 3 -1 air replace
setblock 12 3 6 air replace
setblock 14 2 -28 air replace
# B1
setblock -50 -5 31 air replace
setblock -63 -6 30 air replace
setblock -57 -5 46 air replace
setblock -87 -4 41 air replace
setblock -108 -5 66 air replace
setblock -94 -5 32 air replace
setblock -100 -5 15 air replace
setblock -76 -6 12 air replace
setblock -54 -5 -4 air replace
setblock -62 -5 -29 air replace
setblock -85 -3 -5 air replace
setblock -96 -5 4 air replace

#vending machine
#Fill
#block
## 1
execute if score vending chest matches 1 run fill -41 -5 45 -41 -5 46 crimson_hyphae replace
## 2
execute if score vending chest matches 2 run fill -85 -5 -21 -85 -5 -22 crimson_hyphae replace
## 3
execute if score vending chest matches 3 run fill -27 2 19 -27 2 20 crimson_hyphae replace
## 4
execute if score vending chest matches 4 run fill -56 2 16 -57 2 16 crimson_hyphae replace
## 5
execute if score vending chest matches 5 run fill -12 2 -3 -12 2 -4 crimson_hyphae replace
## 6
execute if score vending chest matches 6 run fill 18 8 -13 18 8 -14 crimson_hyphae replace
## 7
execute if score vending chest matches 7 run fill 1 14 -4 2 14 -4 crimson_hyphae replace
## 8
execute if score vending chest matches 8 run fill -30 20 -2 -30 20 -3 crimson_hyphae replace

#carpet
## 1
execute if score vending chest matches 1 run fill -41 -2 45 -41 -2 46 red_carpet replace
## 2
execute if score vending chest matches 2 run fill -85 -2 -21 -85 -2 -22 red_carpet replace
## 3
execute if score vending chest matches 3 run fill -27 5 19 -27 5 20 red_carpet replace
## 4
execute if score vending chest matches 4 run fill -56 5 16 -57 5 16 red_carpet replace
## 5
execute if score vending chest matches 5 run fill -12 5 -3 -12 5 -4 red_carpet replace
## 6
execute if score vending chest matches 6 run fill 18 11 -13 18 11 -14 red_carpet replace
## 7
execute if score vending chest matches 7 run fill 1 17 -4 2 17 -4 red_carpet replace
## 8
execute if score vending chest matches 8 run fill -30 23 -2 -30 23 -3 red_carpet replace

#button
setblock -42 -5 46 stone_button[facing=west]
setblock -84 -5 -22 stone_button[facing=east]
setblock -28 2 20 stone_button[facing=west]
setblock -57 2 15 stone_button[facing=north]
setblock -13 2 -3 stone_button[facing=west]
setblock 17 8 -13 stone_button[facing=west]
setblock 1 14 -5 stone_button[facing=north]
setblock -29 20 -3 stone_button[facing=east]

#5F
setblock -17 27 -18 minecraft:lever[facing=west]
fill -21 20 -9 -21 21 -9 minecraft:tinted_glass replace
setblock -21 24 -20 minecraft:air
setblock -22 24 -20 minecraft:air
#B1
setblock -31 2 13 minecraft:tinted_glass replace
#setblock -57 1 17
setblock -53 2 17 blue_concrete
#scoreboard
scoreboard players set start_vending game 0
scoreboard players set 5f_6_open_door game 0

scoreboard objectives remove open_chest-4
scoreboard objectives remove open_chest-3
scoreboard objectives remove open_chest-2
scoreboard objectives remove open_chest-1
scoreboard objectives remove open_chest-b1
scoreboard objectives remove have_b1_key
scoreboard objectives remove have_5f_key

effect clear @a

tag @a remove chest_4-1
tag @a remove chest_4-2
tag @a remove chest_4-3
tag @a remove chest_3-1
tag @a remove chest_3-2
tag @a remove chest_3-3
tag @a remove chest_2-1
tag @a remove chest_2-2
tag @a remove chest_2-3
tag @a remove chest_2-4
tag @a remove chest_1-1
tag @a remove chest_1-2
tag @a remove chest_1-3
tag @a remove chest_1-4
tag @a remove chest_1-5
tag @a remove chest_1-6
tag @a remove chest_1-7
tag @a remove chest_1-8
tag @a remove chest_1-9
tag @a remove chest_1-10
tag @a remove chest_b1-1
tag @a remove chest_b1-2
tag @a remove chest_b1-3
tag @a remove chest_b1-4
tag @a remove chest_b1-5
tag @a remove chest_b1-6
tag @a remove chest_b1-7
tag @a remove chest_b1-8
tag @a remove chest_b1-9
tag @a remove chest_b1-10
tag @a remove chest_b1-11
tag @a remove chest_b1-12


function aooni:reload