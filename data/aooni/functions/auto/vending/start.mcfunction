scoreboard players set start_vending game 1
tellraw @a[team=!aooni] [{"text":"館の自動販売機が稼働し始めたようだ..."}]
execute as @a[team=!aooni] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~