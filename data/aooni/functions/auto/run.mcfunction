execute if score @s[team=hiroshi] have_key matches 1 run tp @s -18 1 14
execute if score @s[team=hiroshi] have_key matches 0 run tellraw @s [{"text":"あなたは鍵を所持していません！","color":"red"}]
execute if entity @s[team=aooni] run tp @s -18 1 14