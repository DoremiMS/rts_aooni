tellraw @a [{"selector":"@s","color":"aqua","bold": true},{"text":"が新しい青鬼に選ばれた...","bold":true,"color":"white"}]
##team
team join aooni @s
##tp
tp @s @e[tag=aooni_tp,limit=1,sort=nearest]
##sound
execute as @a at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~
#item
item replace entity @s armor.head with carved_pumpkin{Unbreakable:1,HideFlags:5,Enchantments:[{id:binding_curse,lvl:1}]}
item replace entity @s armor.chest with diamond_chestplate{Unbreakable:1,HideFlags:5,Enchantments:[{id:binding_curse,lvl:1}]}
item replace entity @s armor.legs with diamond_leggings{Unbreakable:1,HideFlags:5,Enchantments:[{id:binding_curse,lvl:1}]}
item replace entity @s armor.feet with diamond_boots{Unbreakable:1,HideFlags:5,Enchantments:[{id:binding_curse,lvl:1}]}