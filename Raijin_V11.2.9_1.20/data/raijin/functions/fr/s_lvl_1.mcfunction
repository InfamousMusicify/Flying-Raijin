execute if score #cdmsg_wait raijin.config matches 0 if score #cooldown raijin.config matches 10.. run tellraw @s[scores={raijin.cooldown=1..},tag=frcdmsg] ["",{"text":"Flying Raijin:","color":"gold"},{"text":" Cooling Down","color":"red"}]
tag @s[scores={raijin.cooldown=1..}] remove frcdmsg
execute if score #cooldown raijin.config matches 10.. run tag @s[scores={raijin.cooldown=0}] add frcdmsg

execute at @e[limit=1,type=trident,scores={raijin_id=1..},tag=rtp] if score @e[type=trident,limit=1,distance=..0,tag=rtp] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/lvl_1
