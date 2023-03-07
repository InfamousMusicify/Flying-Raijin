#say lvl2
# raijin:test1  (executes as player who used raijin teleport click)
# has to be above for proper firing?
#cd msg
execute unless score #config raijin.cooldown matches ..10 run tellraw @s[scores={raijin.cooldown=1..},tag=frcdmsg] ["",{"text":"Flying Raijin:","color":"gold"},{"text":" Cooling Down","color":"red"}]
tag @s[scores={raijin.cooldown=1..}] remove frcdmsg
execute unless score #config raijin.cooldown matches ..10 run tag @s[scores={raijin.cooldown=0}] add frcdmsg
# items
#execute at @e[limit=1,type=trident,scores={raijin_id=1..},tag=rtp] if score @e[type=trident,limit=1,distance=..0,tag=rtp] raijin_id = @s[scores={raijin_crouch=1..,raijin.cooldown=0}] raijin_id run function raijin:fr/lvl_1_item
# TP Trident -> Player
execute at @e[limit=1,type=trident,scores={raijin_id=1..},tag=rtp] if score @e[type=trident,limit=1,distance=..0,tag=rtp] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/lvl_1
# cd cont - below for proper firing


#cooldown
#execute if score #config raijin.exp.lvl2 <= @s raijin.exp.point run 
#scoreboard players operation @s[scores={raijin.cooldown=0}] raijin.cooldown = @s raijin.cdtracker
#tag @s[scores={raijin.exp.point=0}] add frncmsg
#tag @s[scores={raijin.exp.point=1..}] remove frncmsg
#execute if score @s raijin.xpt <= @s raijin.exp.point at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run tellraw @s[scores={raijin.exp.point=0}] ["",{"text":"Flying Raijin:","color":"gold"},{"text":" Not enough Chakra","color":"red"}]
