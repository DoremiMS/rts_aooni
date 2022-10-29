function aooni:auto/set_air

#1F~4F
##代入

##LootTable 1_4
### 4F
execute if score 1_4 chest matches 1 run setblock -7 19 -15 chest{LootTable:"aooni:1_4"} replace
execute if score 1_4 chest matches 2 run setblock -45 20 -22 chest{LootTable:"aooni:1_4"} replace
execute if score 1_4 chest matches 3 run setblock -31 20 21 chest{LootTable:"aooni:1_4"} replace
### 3F
execute if score 1_4 chest matches 4 run setblock -33 13 -19 chest{LootTable:"aooni:1_4"} replace
execute if score 1_4 chest matches 5 run setblock 8 15 -20 chest{LootTable:"aooni:1_4"} replace
execute if score 1_4 chest matches 6 run setblock -25 14 -33 chest{LootTable:"aooni:1_4"} replace
### 2F
execute if score 1_4 chest matches 7 run setblock -24 8 0 chest{LootTable:"aooni:1_4"} replace
execute if score 1_4 chest matches 8 run setblock -9 8 -37 chest{LootTable:"aooni:1_4"} replace
execute if score 1_4 chest matches 9 run setblock -35 7 -30 chest{LootTable:"aooni:1_4"} replace
execute if score 1_4 chest matches 10 run setblock -40 8 6 chest{LootTable:"aooni:1_4"} replace
### 1F
execute if score 1_4 chest matches 11 run setblock -33 2 38 chest{LootTable:"aooni:1_4"} replace
execute if score 1_4 chest matches 12 run setblock -32 -1 38 chest{LootTable:"aooni:1_4"} replace
execute if score 1_4 chest matches 13 run setblock -40 4 32 chest{LootTable:"aooni:1_4"} replace
execute if score 1_4 chest matches 14 run setblock -36 -2 -3 chest{LootTable:"aooni:1_4"} replace
execute if score 1_4 chest matches 15 run setblock -41 3 8 chest{LootTable:"aooni:1_4"} replace
execute if score 1_4 chest matches 16 run setblock -53 1 8 chest{LootTable:"aooni:1_4"} replace
execute if score 1_4 chest matches 17 run setblock -61 3 3 chest{LootTable:"aooni:1_4"} replace
execute if score 1_4 chest matches 18 run setblock -78 3 1 chest{LootTable:"aooni:1_4"} replace
execute if score 1_4 chest matches 19 run setblock 12 3 6 chest{LootTable:"aooni:1_4"} replace
execute if score 1_4 chest matches 20 run setblock 14 2 -28 chest{LootTable:"aooni:1_4"} replace
##LootTable Chest
# 4F
setblock -7 19 -15 chest{LootTable:"aooni:chest"} replace
setblock -45 20 -22 chest{LootTable:"aooni:chest"} replace
setblock -31 20 21 chest{LootTable:"aooni:chest"} replace
# 3F
setblock -33 13 -19 chest{LootTable:"aooni:chest"} replace
setblock 8 15 -20 chest{LootTable:"aooni:chest"} replace
setblock -25 14 -33 chest{LootTable:"aooni:chest"} replace
# 2F
setblock -24 8 0 chest{LootTable:"aooni:chest"} replace
setblock -9 8 -37 chest{LootTable:"aooni:chest"} replace
setblock -35 7 -30 chest{LootTable:"aooni:chest"} replace
setblock -40 8 6 chest{LootTable:"aooni:chest"} replace
# 1F
setblock -33 2 38 chest{LootTable:"aooni:chest"} replace
setblock -32 -1 38 chest{LootTable:"aooni:chest"} replace
setblock -40 4 32 chest{LootTable:"aooni:chest"} replace
setblock -36 -2 -3 chest{LootTable:"aooni:chest"} replace
setblock -41 3 8 chest{LootTable:"aooni:chest"} replace
setblock -53 1 8 chest{LootTable:"aooni:chest"} replace
setblock -61 3 3 chest{LootTable:"aooni:chest"} replace
setblock -78 3 1 chest{LootTable:"aooni:chest"} replace
setblock 12 3 6 chest{LootTable:"aooni:chest"} replace
setblock 14 2 -28 chest{LootTable:"aooni:chest"} replace
#B1
##LootTable b1
execute if score b1 chest matches 1 run setblock -50 -5 31 chest{LootTable:"aooni:b1"} replace
execute if score b1 chest matches 2 run setblock -63 -6 30 chest{LootTable:"aooni:b1"} replace
execute if score b1 chest matches 3 run setblock -57 -5 46 chest{LootTable:"aooni:b1"} replace
execute if score b1 chest matches 4 run setblock -87 -4 41 chest{LootTable:"aooni:b1"} replace
execute if score b1 chest matches 5 run setblock -108 -5 66 chest{LootTable:"aooni:b1"} replace
execute if score b1 chest matches 6 run setblock -94 -5 32 chest{LootTable:"aooni:b1"} replace
execute if score b1 chest matches 7 run setblock -100 -5 15 chest{LootTable:"aooni:b1"} replace
execute if score b1 chest matches 8 run setblock -76 -6 12 chest{LootTable:"aooni:b1"} replace
execute if score b1 chest matches 9 run setblock -54 -5 -4 chest{LootTable:"aooni:b1"} replace
execute if score b1 chest matches 10 run setblock -62 -5 -29 chest{LootTable:"aooni:b1"} replace
execute if score b1 chest matches 11 run setblock -85 -3 -5 chest{LootTable:"aooni:b1"} replace
execute if score b1 chest matches 12 run setblock -96 -5 4 chest{LootTable:"aooni:b1"} replace
##LootTable chest
setblock -50 -5 31 chest{LootTable:"aooni:chest"} replace
setblock -63 -6 30 chest{LootTable:"aooni:chest"} replace
setblock -57 -5 46 chest{LootTable:"aooni:chest"} replace
setblock -87 -4 41 chest{LootTable:"aooni:chest"} replace
setblock -108 -5 66 chest{LootTable:"aooni:chest"} replace
setblock -94 -5 32 chest{LootTable:"aooni:chest"} replace
setblock -100 -5 15 chest{LootTable:"aooni:chest"} replace
setblock -76 -6 12 chest{LootTable:"aooni:chest"} replace
setblock -54 -5 -4 chest{LootTable:"aooni:chest"} replace
setblock -62 -5 -29 chest{LootTable:"aooni:chest"} replace
setblock -85 -3 -5 chest{LootTable:"aooni:chest"} replace
setblock -96 -5 4 chest{LootTable:"aooni:chest"} replace

kill @e[type=item]