#say lvl2
# raijin:test1  (executes as player who used raijin teleport click)
# has to be above for proper firing?
#cd msg
execute unless score #config raijin.cooldown matches 0..10 run tellraw @s[scores={raijin.cooldown=1..},tag=frcdmsg] ["",{"text":"Flying Raijin:","color":"gold"},{"text":" Cooling Down","color":"red"}]
tag @s[scores={raijin.cooldown=1..}] remove frcdmsg
execute unless score #config raijin.cooldown matches 0..10 run tag @s[scores={raijin.cooldown=0}] add frcdmsg
#
# TP Player -> Trident
execute at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/lvl_2

#cd finish.  has to be below.

#tag @s add frcdmsg

#tag @s[scores={raijin.exp.point=0}] add frncmsg
#tag @s[scores={raijin.exp.point=1..}] remove frncmsg
#execute if score @s raijin.xpt <= @s raijin.exp.point at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run tellraw @s[scores={raijin.exp.point=0}] ["",{"text":"Flying Raijin:","color":"gold"},{"text":" Not enough Chakra","color":"red"}]
