# raijin:test1  (executes as player who used raijin recall click)

#####################################################################################################################################################################
# TP Trident -> Player
# limited (bugged with multiplayer, first player to throw holds up other peoples recalls)
#execute at @e[limit=1,type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run tp @e[limit=1,sort=nearest,type=trident,scores={raijin_id=1..}] @s
# all tridents (no bugs but not as fun, recalls all)
#execute at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run tp @e[limit=1,sort=nearest,type=trident,scores={raijin_id=1..}] @s

###### Main working recall
# items
execute at @e[limit=1,type=trident,scores={raijin_id=1..},tag=rtp] if score @e[type=trident,limit=1,distance=..0,tag=rtp] raijin_id = @s[scores={raijin_crouch=1..,raijin.cooldown=0}] raijin_id run tp @e[type=item,sort=nearest,distance=..8] @s
# TP Trident -> Player
execute at @e[limit=1,type=trident,scores={raijin_id=1..},tag=rtp] if score @e[type=trident,limit=1,distance=..0,tag=rtp] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run tp @e[limit=1,distance=..0,type=trident,scores={raijin_id=1..},tag=rtp] @s
######

####################################################################################################################################################################
# Tp sounds
#say lvl1exp
execute at @e[type=trident,scores={raijin_id=1..}] run execute if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id as @s run function raijin:fr/tpsound
#xp pass off (xp is read only so exp point became a pss off for that system.  reduce was meant to subtract the equiv value in xp)
#scoreboard players operation @s raijin.exp.point = @s raijin.xp
#execute unless score #config raijin.xp matches 0 run scoreboard players operation @s raijin.exp.point = @s raijin.xp
#EXP add
execute unless score #config raijin.level.cap = @s[scores={raijin.cooldown=0}] raijin.exp.level at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run scoreboard players operation @s raijin.exp.point += #config raijin.exp.lvl1
# vanilla Exp adder trigger
#execute if score #config raijin.xpt matches 2 at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:exp/reduce
execute as @s[scores={raijin.exp.point=..0}] run function raijin:exp/prereduce
execute at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:exp/reduce


#cd msg
tag @s[scores={raijin.cooldown=0}] add frcdmsg
execute unless score #config raijin.cooldown matches 0..10 run tellraw @s[scores={raijin.cooldown=1..},tag=frcdmsg] ["",{"text":"Flying Raijin:","color":"gold"},{"text":" Cooling Down","color":"red"}]
tag @s[scores={raijin.cooldown=1..}] remove frcdmsg
# out of chakra
execute if score @s raijin.xp < #config raijin.exp.lvl2 run tellraw @s[scores={raijin.xp=0}] ["",{"text":"Flying Raijin:","color":"gold"},{"text":" Not enough Chakra","color":"red"}]
# cooldown
execute at @e[limit=1,type=trident,scores={raijin_id=1..},tag=rtp] if score @e[type=trident,limit=1,distance=..0,tag=rtp] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id as @s[scores={raijin.cooldown=0}] run scoreboard players operation @s raijin.cooldown = @s raijin.cdtracker
# Exp gain and level up
#function raijin:exp/level_up