# raijin:test1  (executes as player who used raijin teleport click)
# TP Player -> Trident
execute at @e[type=trident,scores={raijin_id=1..}] run execute if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run tp @s ~ ~ ~
# Tp sounds
execute at @e[type=trident,scores={raijin_id=1..}] run execute if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id as @s run function raijin:test2
# Reset click
scoreboard players set @s raijin 0
