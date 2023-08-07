execute unless score #cdmsg_wait raijin.config matches 1.. if score #cooldown raijin.config matches 10.. run tellraw @s[scores={raijin.cooldown=1..},tag=raijin_cd] ["",{"text":"Flying Raijin:","color":"gold"},{"text":" Recharging","color":"red"}]
tag @s[scores={raijin.cooldown=1..}] remove raijin_cd
execute if score #cooldown raijin.config matches 10.. run tag @s[scores={raijin.cooldown=0}] add raijin_cd

# in order of thrown fix!   -mulitiplayer resiliant and tested!
execute at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run tag @e[type=trident,limit=1,distance=..0] add raijin
execute at @e[limit=1,type=trident,tag=raijin] at @e[limit=1,type=trident,distance=..0] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/raijin
tag @e[type=trident] remove raijin

# stable old method -tp reverse order of thrown... why mojang why....
##### execute at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0,scores={raijin_id=1..}] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/raijin

# In order of thrown, multiplayer resiliant -actually broken as fuck
##### execute at @e[type=trident,scores={raijin_id=1..}] at @e[limit=1,type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0,scores={raijin_id=1..}] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/raijin

#execute at @e[type=trident,sort=nearest,scores={RaijinID=1..}] if score @e[type=trident,limit=1,distance=..0] RaijinID = @s RaijinID run tp @s ~ ~ ~


#execute at @e[type=trident,scores={raijin_id=1..},tag=raijin_tp] at @e[limit=1,type=trident,scores={raijin_id=1..},distance=..0,tag=raijin_tp] if score @e[type=trident,limit=1,distance=..0,tag=raijin_tp] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/lvl_2
#execute at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/lvl_2

# TP in opposite order of thrown
# execute at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/lvl_2

# tp in order thrown, but might not work properly in multiplayer? :(
# execute at @e[limit=1,type=trident,scores={raijin_id=1..},tag=raijin_tp] if score @e[type=trident,limit=1,distance=..0,tag=raijin_tp] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/lvl_2



