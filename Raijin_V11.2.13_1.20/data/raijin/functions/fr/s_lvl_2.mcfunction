execute unless score #cdmsg_wait raijin.config matches 1.. unless score #cooldown raijin.config matches ..10 run tellraw @s[scores={raijin.cooldown=1..},tag=frcdmsg] ["",{"text":"Flying Raijin:","color":"gold"},{"text":" Cooling Down","color":"red"}]
tag @s[scores={raijin.cooldown=1..}] remove frcdmsg
execute unless score #cooldown raijin.config matches ..10 run tag @s[scores={raijin.cooldown=0}] add frcdmsg

execute at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/lvl_2
