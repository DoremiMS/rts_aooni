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