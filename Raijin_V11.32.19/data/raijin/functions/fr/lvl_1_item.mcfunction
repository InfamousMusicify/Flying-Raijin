tp @e[type=item,sort=nearest,distance=..8] @s
#scoreboard players operation @s raijin.cooldown = @s raijin.cdtracker

############################ old notes and comments

# items
#execute at @e[limit=1,type=trident,scores={raijin_id=1..},tag=rtp] if score @e[type=trident,limit=1,distance=..0,tag=rtp] raijin_id = @s[scores={raijin_crouch=1..}] raijin_id run tp @e[type=item,sort=nearest,distance=..8] @s
# TP Trident -> Player
#execute at @e[limit=1,type=trident,scores={raijin_id=1..},tag=rtp] if score @e[type=trident,limit=1,distance=..0,tag=rtp] raijin_id = @s raijin_id run tp @e[limit=1,distance=..0,type=trident,scores={raijin_id=1..},tag=rtp] @s
#execute at @e[type=trident,scores={raijin_id=1..}] run tag @e[type=trident,limit=1,distance=..0] remove rtp
#execute if score @e[type=trident,limit=1] raijin_id = @s raijin_id run tp @e[limit=1,type=trident,scores={raijin_id=1..}] @s

#execute at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run tp @e[limit=1,sort=nearest,type=trident,scores={raijin_id=1..}] @s



#execute at @e[limit=1,type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run tp @e[limit=1,sort=nearest,type=trident,scores={raijin_id=1..}] @s

#execute at @e[limit=1,type=trident] if score @s raijin_id = @e[type=trident,limit=1,distance=..0] raijin_id run tp @e[limit=1,sort=nearest,type=trident,scores={raijin_id=1..}] @s
#execute at @e[limit=1,type=trident] if score @s raijin_id = @e[type=trident,limit=1,distance=..0] raijin_id as @e[type=trident,limit=1,distance=..0] run tp @a[limit=1,scores={raijin_recall=1..,raijin_lock=1..61},sort=nearest]

#execute at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run scoreboard players add @e[type=trident,limit=1,distance=..0] raijin 1

#execute at @e[limit=1,type=trident,scores={raijin_id=1..},sort=nearest] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run tp @e[limit=1,sort=nearest,type=trident,scores={raijin_id=1..}] @s

#execute at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id as @e[type=trident,limit=1,distance=..0] run tp 
#execute at @a[scores={raijin_recall=1..,raijin_lock=1..61},sort=nearest] if score @a[scores={raijin_recall=1..,raijin_lock=1..61}] raijin_id = @s raijin_id run

#execute as @e[limit=1,type=trident,scores={raijin_id=1..}] if score @a[scores={raijin_recall=1..,raijin_lock=1..61}] raijin_id = @s raijin_id run tp @e[type=trident,limit=1,distance=..0] @s

##execute at @e[limit=1,type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run tp @e[limit=1,sort=nearest,type=trident,scores={raijin_id=1..}] @s
##execute as @e[type=trident,scores={raijin_id=1..}] if score @s raijin_id = @p raijin_id run tp @p
####execute at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run scoreboard players set @e[type=trident,limit=1,distance=..0] raijin 1
#execute if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id at @e[limit=1,type=trident,scores={raijin_id=1..}] run tp @e[limit=1,sort=nearest,type=trident,scores={raijin_id=1..}] @s
#execute at @e[limit=1,type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run tp @e[limit=1,sort=nearest,type=trident,scores={raijin_id=1..}] @s
# execute at @e[limit=1,type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run tp @e[limit=1,sort=nearest,type=trident,scores={raijin_id=1..}] @s
# execute at @e[limit=1,type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run tp @e[limit=1,sort=nearest,type=trident,scores={raijin_id=1..}] ~ ~1.5 ~
####
# execute at @e[limit=1,type=trident,scores={raijin_id=1..}] run execute if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run tp @e[limit=1,sort=nearest,type=trident,scores={raijin_id=1..}] @s
####################################################################################################################################################################