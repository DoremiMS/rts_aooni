#scoreboard
##objectives add
scoreboard objectives add game dummy "ゲーム詳細"
scoreboard objectives add timer dummy "タイマー"
scoreboard objectives add food food "食料ゲージ"
scoreboard objectives add random dummy "ランダム関連"

#team
##add
team add lobby "ロビー待機"
team add hiroshi "ひろし（逃走者）"
team add aooni "青鬼"
team add escape "脱出者"
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
###lobby
team modify aooni collisionRule never
team modify aooni color white
team modify aooni friendlyFire false
team modify aooni nametagVisibility hideForOtherTeams
team modify aooni seeFriendlyInvisibles true
###escape
team modify aooni collisionRule never
team modify aooni color blue
team modify aooni friendlyFire false
team modify aooni nametagVisibility hideForOtherTeams
team modify aooni prefix "[青鬼] "
team modify aooni seeFriendlyInvisibles true