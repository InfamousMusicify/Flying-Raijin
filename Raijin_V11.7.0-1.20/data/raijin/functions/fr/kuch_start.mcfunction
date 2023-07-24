#
#
#
execute unless score #cdmsg_wait raijin.config matches 1.. if score #cooldown raijin.config matches 10.. run tellraw @s[scores={raijin.cooldown=1..},tag=raijin_cd] ["",{"text":"Flying Raijin:","color":"gold"},{"text":" Recharging","color":"red"}]
tag @s[scores={raijin.cooldown=1..}] remove raijin_cd
execute if score #cooldown raijin.config matches 10.. run tag @s[scores={raijin.cooldown=0}] add raijin_cd
# In order of thrown, multiplayer resiliant
execute at @e[type=trident,scores={raijin_id=1..},tag=raijin_tp] at @e[limit=1,type=trident,scores={raijin_id=1..},tag=raijin_tp] if score @e[type=trident,limit=1,distance=..0,tag=raijin_tp] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/kuch

# Old Stable # execute at @e[limit=1,type=trident,scores={raijin_id=1..},tag=raijin_tp] if score @e[type=trident,limit=1,distance=..0,tag=raijin_tp] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/lvl_1

