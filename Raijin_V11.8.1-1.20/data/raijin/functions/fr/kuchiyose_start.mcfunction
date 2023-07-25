#
#
#
execute unless score #cdmsg_wait raijin.config matches 1.. if score #cooldown raijin.config matches 10.. run tellraw @s[scores={raijin.cooldown=1..},tag=raijin_cd] ["",{"text":"Flying Raijin:","color":"gold"},{"text":" Recharging","color":"red"}]
tag @s[scores={raijin.cooldown=1..}] remove raijin_cd
execute if score #cooldown raijin.config matches 10.. run tag @s[scores={raijin.cooldown=0}] add raijin_cd
# in order of thrown fix!   -mulitiplayer resiliant and tested!
execute at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run tag @e[type=trident,limit=1,distance=..0] add kuchiyose
execute at @e[limit=1,type=trident,tag=kuchiyose] at @e[limit=1,type=trident,distance=..0] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/kuchiyose
tag @e[type=trident] remove kuchiyose
##### execute at @e[type=trident,scores={raijin_id=1..}] at @e[limit=1,type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/kuchiyose
#execute at @e[type=trident,scores={raijin_id=1..}] at @e[limit=1,type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/kuchiyose


#execute at @e[type=trident,limit=1,tag=kuchiyose] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run function raijin:fr/kuchiyose


#execute at @e[type=trident,scores={raijin_id=1..},tag=raijin_tp] at @e[limit=1,type=trident,scores={raijin_id=1..},tag=raijin_tp] if score @e[type=trident,limit=1,distance=..0,tag=raijin_tp] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/kuch


#tp @e[limit=1,distance=..0,type=trident,scores={raijin_id=1..}] @s

#execute at @e[type=trident,sort=nearest,scores={RaijinID=1..}] run execute if score @e[type=trident,limit=1,distance=..0] RaijinID = @s RaijinID run tp @e[limit=1,distance=..0,type=trident,scores={raijin_id=1..}] @s

# execute at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/kuchiyose
#execute at @e[type=trident,scores={raijin_id=1..}] at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0,scores={raijin_id=1..}] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/kuchiyose
#execute at @e[limit=1,type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0,scores={raijin_id=1..}] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/kuchiyose

#OLD stable new# execute at @e[type=trident,scores={raijin_id=1..},tag=raijin_tp] at @e[limit=1,type=trident,scores={raijin_id=1..},tag=raijin_tp] if score @e[type=trident,limit=1,distance=..0,tag=raijin_tp] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/kuch
# Old Stable # execute at @e[limit=1,type=trident,scores={raijin_id=1..},tag=raijin_tp] if score @e[type=trident,limit=1,distance=..0,tag=raijin_tp] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/lvl_1

