# raijin:test1  (executes as player who used raijin recall click)
#say lvl1
#####################################################################################################################################################################
# TP Trident -> Player
# limited (bugged with multiplayer, first player to throw holds up other peoples recalls)
#execute at @e[limit=1,type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run tp @e[limit=1,sort=nearest,type=trident,scores={raijin_id=1..}] @s
# all tridents (no bugs but not as fun, recalls all)
#execute at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run tp @e[limit=1,sort=nearest,type=trident,scores={raijin_id=1..}] @s
#invert math (redundant)
#execute if score #config raijin.xpt matches 1 run scoreboard players operation @s raijin.xpt = #config raijin.exp.lvl1
#execute if score #config raijin.xpt matches 1 run scoreboard players operation @s raijin.xpt *= @s raijin.num
###### Main working recall
# items
#execute if score #config raijin.xpt matches 1 if score @s raijin.xpt <= @s raijin.exp.point at @e[limit=1,type=trident,scores={raijin_id=1..},tag=rtp] if score @e[type=trident,limit=1,distance=..0,tag=rtp] raijin_id = @s[scores={raijin_crouch=1..,raijin.cooldown=0}] raijin_id run tp @e[type=item,sort=nearest,distance=..8] @s
# TP Trident -> Player
#execute if score #config raijin.xpt matches 1 if score @s raijin.xpt <= @s raijin.exp.point at @e[limit=1,type=trident,scores={raijin_id=1..},tag=rtp] if score @e[type=trident,limit=1,distance=..0,tag=rtp] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run tp @e[limit=1,distance=..0,type=trident,scores={raijin_id=1..},tag=rtp] @s
###### New working test
# teleport when exp is given to player
# items
execute if score #config raijin.xpt matches 1 if score #config raijin.exp.lvl1 matches 1.. at @e[limit=1,type=trident,scores={raijin_id=1..},tag=rtp] if score @e[type=trident,limit=1,distance=..0,tag=rtp] raijin_id = @s[scores={raijin_crouch=1..,raijin.cooldown=0}] raijin_id run tp @e[type=item,sort=nearest,distance=..8] @s
# TP Trident -> Player
execute if score #config raijin.xpt matches 1 if score #config raijin.exp.lvl1 matches 1.. at @e[limit=1,type=trident,scores={raijin_id=1..},tag=rtp] if score @e[type=trident,limit=1,distance=..0,tag=rtp] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run tp @e[limit=1,distance=..0,type=trident,scores={raijin_id=1..},tag=rtp] @s

# teleport when exp is taken and player has enouigh
# items
execute if score #config raijin.xpt matches 1 if score #config raijin.exp.lvl1 <= @s raijin.exp.point if score @s raijin.exp.point matches 1.. at @e[limit=1,type=trident,scores={raijin_id=1..},tag=rtp] if score @e[type=trident,limit=1,distance=..0,tag=rtp] raijin_id = @s[scores={raijin_crouch=1..,raijin.cooldown=0}] raijin_id run tp @e[type=item,sort=nearest,distance=..8] @s
# TP Trident -> Player
execute if score #config raijin.xpt matches 1 if score #config raijin.exp.lvl1 <= @s raijin.exp.point if score @s raijin.exp.point matches 1.. at @e[limit=1,type=trident,scores={raijin_id=1..},tag=rtp] if score @e[type=trident,limit=1,distance=..0,tag=rtp] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run tp @e[limit=1,distance=..0,type=trident,scores={raijin_id=1..},tag=rtp] @s

####################################################################################################################################################################
# Tp sounds
execute at @e[type=trident,scores={raijin_id=1..}] run execute if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id as @s run function raijin:fr/tpsound
#xp pass off (xp is read only so exp point became a pss off for that system.  reduce was meant to subtract the equiv value in xp)
#scoreboard players operation @s raijin.exp.point = @s raijin.xp
#execute unless score #config raijin.xp matches 0 run scoreboard players operation @s raijin.exp.point = @s raijin.xp
#EXP add
#execute unless score #config raijin.level.cap = @s[scores={raijin.cooldown=0}] raijin.exp.level at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run scoreboard players operation @s raijin.exp.point += #config raijin.exp.lvl1
execute if score #config raijin.xpt matches 1 if score @s raijin.xpt <= @s raijin.exp.point unless score #config raijin.level.cap = @s[scores={raijin.cooldown=0}] raijin.exp.level at @e[type=trident,limit=1,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run scoreboard players operation @s raijin.exp.point += #config raijin.exp.lvl1

# config, exp point has, xp has,                                                 ############################ xp greater than lvl2 reduction (this must be done to all lines *crying inside*) if score @s raijin.xp >= #config raijin.exp.lvl2
#execute if score #config raijin.xpt matches 1..2 unless score @s[scores={raijin_exp.point=1..,raijin.xp=0}] raijin.xp matches 0 unless score @s raijin.xp >= #config raijin.exp.lvl1 at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run function raijin:exp/reduce
execute if score #config raijin.xpt matches 2 at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:exp/adder


#cd msg
tag @s[scores={raijin.cooldown=0}] add frcdmsg
execute unless score #config raijin.cooldown matches 0..10 run tellraw @s[scores={raijin.cooldown=1..},tag=frcdmsg] ["",{"text":"Flying Raijin:","color":"gold"},{"text":" Cooling Down","color":"red"}]
tag @s[scores={raijin.cooldown=1..}] remove frcdmsg
execute if score #config raijin.xpt matches 1 run tellraw @s[scores={raijin.exp.point=0}] ["",{"text":"Flying Raijin:","color":"gold"},{"text":" Not enough Chakra","color":"red"}]
# cooldown
execute at @e[limit=1,type=trident,scores={raijin_id=1..},tag=rtp] if score @e[type=trident,limit=1,distance=..0,tag=rtp] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id as @s[scores={raijin.cooldown=0}] run scoreboard players operation @s raijin.cooldown = @s raijin.cdtracker
# Exp gain and level up
#function raijin:exp/level_up