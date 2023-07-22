execute unless score #cdmsg_wait raijin.config matches 1.. if score #cooldown raijin.config matches 10.. run tellraw @s[scores={raijin.cooldown=1..},tag=frcdmsg] ["",{"text":"Flying Raijin:","color":"gold"},{"text":" Recharging","color":"red"}]
tag @s[scores={raijin.cooldown=1..}] remove frcdmsg
execute if score #cooldown raijin.config matches 10.. run tag @s[scores={raijin.cooldown=0}] add frcdmsg
# In order of thrown, multiplayer resiliant
execute at @e[type=trident,scores={raijin_id=1..},tag=raijin_tp] at @e[limit=1,type=trident,scores={raijin_id=1..},tag=raijin_tp] if score @e[type=trident,limit=1,distance=..0,tag=raijin_tp] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/raijin



#execute at @e[type=trident,scores={raijin_id=1..},tag=raijin_tp] at @e[limit=1,type=trident,scores={raijin_id=1..},distance=..0,tag=raijin_tp] if score @e[type=trident,limit=1,distance=..0,tag=raijin_tp] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/lvl_2
#execute at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/lvl_2

# TP in opposite order of thrown
# execute at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/lvl_2

# tp in order thrown, but might not work properly in multiplayer? :(
# execute at @e[limit=1,type=trident,scores={raijin_id=1..},tag=raijin_tp] if score @e[type=trident,limit=1,distance=..0,tag=raijin_tp] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/lvl_2



