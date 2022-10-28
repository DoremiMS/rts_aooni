#Fill
#block
## 1
execute if score vending chest matches 1 run fill -41 -5 45 -41 -5 46 warped_hyphae replace
## 2
execute if score vending chest matches 2 run fill -85 -5 -21 -85 -5 -22 warped_hyphae replace
## 3
execute if score vending chest matches 3 run fill -27 2 19 -27 2 20 warped_hyphae replace
## 4
execute if score vending chest matches 4 run fill -56 2 16 -57 2 16 warped_hyphae replace
## 5
execute if score vending chest matches 5 run fill -12 2 -3 -12 2 -4 warped_hyphae replace
## 6
execute if score vending chest matches 6 run fill 18 8 -13 18 8 -14 warped_hyphae replace
## 7
execute if score vending chest matches 7 run fill 1 14 -4 2 14 -4 warped_hyphae replace
## 8
execute if score vending chest matches 8 run fill -30 20 -2 -30 20 -3 warped_hyphae replace

#carpet
## 1
execute if score vending chest matches 1 run fill -41 -2 45 -41 -2 46 cyan_carpet replace
## 2
execute if score vending chest matches 2 run fill -85 -2 -21 -85 -2 -22 cyan_carpet replace
## 3
execute if score vending chest matches 3 run fill -27 5 19 -27 5 20 cyan_carpet replace
## 4
execute if score vending chest matches 4 run fill -56 5 16 -57 5 16 cyan_carpet replace
## 5
execute if score vending chest matches 5 run fill -12 5 -3 -12 5 -4 cyan_carpet replace
## 6
execute if score vending chest matches 6 run fill 18 11 -13 18 11 -14 cyan_carpet replace
## 7
execute if score vending chest matches 7 run fill 1 17 -4 2 17 -4 cyan_carpet replace
## 8
execute if score vending chest matches 8 run fill -30 23 -2 -30 23 -3 cyan_carpet replace

tellraw @s [{"text":"この自動販売機は当たりのものだ！"}]
tellraw @a[team=!aooni] [{"text":"5Fの扉が空いた..."}]
setblock -21 24 -20 minecraft:redstone_torch
setblock -22 24 -20 minecraft:redstone_torch