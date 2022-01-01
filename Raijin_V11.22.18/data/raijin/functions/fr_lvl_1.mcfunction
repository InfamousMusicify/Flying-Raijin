# raijin:test1  (executes as player who used raijin recall click)
# items
execute at @e[limit=1,type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin_crouch=1..}] raijin_id run tp @e[type=item,sort=nearest,distance=..8] @s
# TP Player -> Trident
execute at @e[limit=1,type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run tp @e[limit=1,sort=nearest,type=trident,scores={raijin_id=1..}] @s

# execute at @e[limit=1,type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run tp @e[limit=1,sort=nearest,type=trident,scores={raijin_id=1..}] ~ ~1.5 ~
####
# execute at @e[limit=1,type=trident,scores={raijin_id=1..}] run execute if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run tp @e[limit=1,sort=nearest,type=trident,scores={raijin_id=1..}] @s

# Tp sounds
execute at @e[type=trident,scores={raijin_id=1..}] run execute if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id as @s run function raijin:tpsound
# Reset click
scoreboard players set @s raijin_recall 0

# 
scoreboard players reset @s raijin_crouch