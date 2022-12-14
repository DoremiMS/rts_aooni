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

gamerule showDeathMessages false

##summon armor_stand
# 4F
summon armor_stand -7 19 -15 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_4-1]}
summon armor_stand -45 20 -22 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_4-2]}
summon armor_stand -31 20 21 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_4-3]}
# 3F
summon armor_stand -33 13 -19 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_3-1]}
summon armor_stand 8 15 -20 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_3-2]}
summon armor_stand -25 14 -33 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_3-3]}
# 2F
summon armor_stand -24 8 0 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_2-1]}
summon armor_stand -9 8 -37 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_2-2]}
summon armor_stand -35 7 -30 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_2-3]}
summon armor_stand -40 8 6 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_2-4]}
# 1F
summon armor_stand -33 2 38 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_1-1]}
summon armor_stand -32 -1 38 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_1-2]}
summon armor_stand -40 4 32 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_1-3]}
summon armor_stand -36 -2 -3 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_1-4]}
summon armor_stand -41 3 8 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_1-5]}
summon armor_stand -53 1 8 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_1-6]}
summon armor_stand -61 3 3 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_1-7]}
summon armor_stand -78 3 -1 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_1-8]}
summon armor_stand 12 3 6 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_1-9]}
summon armor_stand 14 2 -28 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_1-10]}
# B1
summon armor_stand -50 -5 31 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-1]}
summon armor_stand -63 -6 30 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-2]}
summon armor_stand -57 -5 46 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-3]}
summon armor_stand -87 -4 41 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-4]}
summon armor_stand -108 -5 66 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-5]}
summon armor_stand -94 -5 32 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-6]}
summon armor_stand -100 -5 15 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-7]}
summon armor_stand -76 -6 12 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-8]}
summon armor_stand -54 -5 -4 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-9]}
summon armor_stand -62 -5 -29 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-10]}
summon armor_stand -85 -3 -5 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-11]}
summon armor_stand -96 -5 4 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[chest_b1-12]}