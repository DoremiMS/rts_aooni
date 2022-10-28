effect give @s blindness 10 4 true
effect give @s glowing 10 255 true
tellraw @s [{"text":"この自販機はハズレのようだ..."}]
execute as @s at @s run playsound minecraft:entity.lightning_bolt.impact master @s ~ ~ ~ 1 0.2