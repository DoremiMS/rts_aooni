#scoreboard
##objectives add
scoreboard objectives add game dummy "ゲーム詳細"
scoreboard objectives add timer dummy "タイマー"
scoreboard objectives add food food "食料ゲージ"
scoreboard objectives add random dummy "ランダム関連"
scoreboard objectives add chest dummy "チェストランダム"
scoreboard objectives add deathcount deathCount "死亡状況"
scoreboard objectives add death_announce deathCount "死亡アナウンス"
scoreboard objectives add have_key dummy "脱出の鍵取得者"
scoreboard objectives add stoneButtonPresses dummy "石ボタン検知"
scoreboard objectives add kill_skeleton minecraft.killed:minecraft.skeleton
scoreboard objectives add kill_slime minecraft.killed:minecraft.slime
scoreboard objectives add players dummy "ゲーム詳細"
scoreboard objectives add open_chest minecraft.custom:open_chest
scoreboard objectives add open_chest-4 dummy "チェスト開放状況-4F"
scoreboard objectives add open_chest-3 dummy "チェスト開放状況-3F"
scoreboard objectives add open_chest-2 dummy "チェスト開放状況-2F"
scoreboard objectives add open_chest-1 dummy "チェスト開放状況-4F"
scoreboard objectives add open_chest-b1 dummy "チェスト開放状況-B1"
scoreboard objectives add have_b1_key dummy "地下室の鍵取得者"
scoreboard objectives add have_5f_key dummy "5Fの鍵取得者"
scoreboard players set 0 timer 0
scoreboard players set 20 timer 20
scoreboard players set 1200 timer 1200
#team
##add
team add lobby "ロビー待機"
team add hiroshi "ひろし（逃走者）"
team add aooni "青鬼"
team add escape "脱出者"
team add death "死亡者"
##modify
###aooni
team modify aooni collisionRule never
team modify aooni color blue
team modify aooni friendlyFire false
team modify aooni nametagVisibility hideForOtherTeams
team modify aooni prefix "[青鬼] "
team modify aooni seeFriendlyInvisibles true
###hiroshi
team modify hiroshi collisionRule never
team modify hiroshi color white
team modify hiroshi friendlyFire false
team modify hiroshi nametagVisibility never
team modify hiroshi seeFriendlyInvisibles true
###death
team modify death collisionRule never
team modify death color gray
team modify death friendlyFire false
team modify death nametagVisibility hideForOtherTeams
team modify death seeFriendlyInvisibles false
###escape
team modify escape collisionRule never
team modify escape color aqua
team modify escape friendlyFire false
team modify escape nametagVisibility hideForOtherTeams
team modify escape seeFriendlyInvisibles false

gamerule showDeathMessages false

## summon armor_stand
# 4F
execute if entity @e[type=armor_stand,tag=chest_4-1] run summon armor_stand -7 19 -15 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_4-1]}
execute if entity @e[type=armor_stand,tag=chest_4-2] run summon armor_stand -45 20 -22 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_4-2]}
execute if entity @e[type=armor_stand,tag=chest_4-3] run summon armor_stand -31 20 21 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_4-3]}
# 3F
execute if entity @e[type=armor_stand,tag=chest_3-1] run summon armor_stand -33 13 -19 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_3-1]}
execute if entity @e[type=armor_stand,tag=chest_3-2] run summon armor_stand 8 15 -20 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_3-2]}
execute if entity @e[type=armor_stand,tag=chest_3-3] run summon armor_stand -25 14 -33 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_3-3]}
# 2F
execute if entity @e[type=armor_stand,tag=chest_2-1] run summon armor_stand -24 8 0 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_2-1]}
execute if entity @e[type=armor_stand,tag=chest_2-2] run summon armor_stand -9 8 -37 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_2-2]}
execute if entity @e[type=armor_stand,tag=chest_2-3] run summon armor_stand -35 7 -30 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_2-3]}
execute if entity @e[type=armor_stand,tag=chest_2-4] run summon armor_stand -40 8 6 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_2-4]}
# 1F
execute if entity @e[type=armor_stand,tag=chest_1-1] run summon armor_stand -33 2 38 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_1-1]}
execute if entity @e[type=armor_stand,tag=chest_1-2] run summon armor_stand -32 -1 38 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_1-2]}
execute if entity @e[type=armor_stand,tag=chest_1-3] run summon armor_stand -40 4 32 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_1-3]}
execute if entity @e[type=armor_stand,tag=chest_1-4] run summon armor_stand -36 2 -3 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_1-4]}
execute if entity @e[type=armor_stand,tag=chest_1-5] run summon armor_stand -41 3 8 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_1-5]}
execute if entity @e[type=armor_stand,tag=chest_1-6] run summon armor_stand -53 1 8 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_1-6]}
execute if entity @e[type=armor_stand,tag=chest_1-7] run summon armor_stand -61 3 3 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_1-7]}
execute if entity @e[type=armor_stand,tag=chest_1-8] run summon armor_stand -78 3 -1 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_1-8]}
execute if entity @e[type=armor_stand,tag=chest_1-9] run summon armor_stand 12 3 6 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_1-9]}
execute if entity @e[type=armor_stand,tag=chest_1-10] run summon armor_stand 14 2 -28 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_1-10]}
# B1
execute if entity @e[type=armor_stand,tag=chest_b1-1] run summon armor_stand -50 -5 31 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-1]}
execute if entity @e[type=armor_stand,tag=chest_b1-2] run summon armor_stand -63 -6 30 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-2]}
execute if entity @e[type=armor_stand,tag=chest_b1-3] run summon armor_stand -57 -5 46 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-3]}
execute if entity @e[type=armor_stand,tag=chest_b1-4] run summon armor_stand -87 -4 41 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-4]}
execute if entity @e[type=armor_stand,tag=chest_b1-5] run summon armor_stand -108 -5 66 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-5]}
execute if entity @e[type=armor_stand,tag=chest_b1-6] run summon armor_stand -94 -5 32 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-6]}
execute if entity @e[type=armor_stand,tag=chest_b1-7] run summon armor_stand -100 -5 15 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-7]}
execute if entity @e[type=armor_stand,tag=chest_b1-8] run summon armor_stand -76 -6 12 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-8]}
execute if entity @e[type=armor_stand,tag=chest_b1-9] run summon armor_stand -54 -5 -4 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-9]}
execute if entity @e[type=armor_stand,tag=chest_b1-10] run summon armor_stand -62 -5 -29 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-10]}
execute if entity @e[type=armor_stand,tag=chest_b1-11] run summon armor_stand -85 -3 -5 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-11]}
execute if entity @e[type=armor_stand,tag=chest_b1-12] run summon armor_stand -96 -5 4 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-12]}