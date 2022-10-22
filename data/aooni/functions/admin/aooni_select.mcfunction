#1時タグ付与
execute unless entity @a[tag=aooni_select] run tag @r[tag=aooni_select_member] add aooni_select
execute unless entity @a[tag=aooni_select_member] unless entity @a[tag=aooni_select] run tag @r add aooni_select

#aooni_select
##tellraw
tellraw @a [{"text":"今回の青鬼は、"},{"selector":"@a[tag=aooni_select]"},{"text":"さんです。"}]
##team
team join aooni @a[tag=aooni_select]
##tp
tp @a[tag=aooni_select] @e[tag=aooni_tp,limit=1,sort=nearest]
##sound
execute as @a at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~
##1時タグ削除
tag @a remove aooni_select
tag @a remove aooni_select_member
