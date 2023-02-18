say lvl2
# raijin:test1  (executes as player who used raijin teleport click)
# has to be above for proper firing?
#execute unless score #config raijin.exp.lvl2 matches 1.. 
execute if score #config raijin.exp.lvl2 <= @s raijin.exp.point if score @s raijin.exp.point matches 1.. run tellraw @s[scores={raijin.exp.point=0},tag=frncmsg] ["",{"text":"Flying Raijin:","color":"gold"},{"text":" Not enough Chakra","color":"red"}]
#execute if score #config raijin.exp.lvl2 matches ..-1 run tellraw @s[scores={raijin.exp.point=0},tag=frncmsg] ["",{"text":"Flying Raijin:","color":"gold"},{"text":" Not enough Chakra","color":"red"}]


# TP Player -> Trident
################################## working og line
#execute at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run tp @s ~ ~ ~
################################## New line V
#execute at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run tp @s ~ ~ ~
#execute run as @s[scores={raijin.exp.point=1..}] 
#invert math (redundant)
#execute run scoreboard players operation @s raijin.xpt = #config raijin.exp.lvl2
#execute run scoreboard players operation @s raijin.xpt *= @s raijin.num
#### Main exp system teleport, fires if players trACKER IS greater THAN OR Equal to players exp point, fix this its broken with exp giving when player has non no teleport.

# teleport when exp is given to player
execute if score #config raijin.exp.lvl2 matches 1.. at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run tp @s ~ ~ ~

# teleport when exp is taken and player has enouigh
execute if score #config raijin.exp.lvl2 <= @s raijin.exp.point if score @s raijin.exp.point matches 1.. at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run tp @s ~ ~ ~


#old line for negative flip
#execute if score @s raijin.xpt <= @s raijin.exp.point at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run tp @s ~ ~ ~
# xp bar adder tp - fixed above for new 2 system mechanic. -2/17/23
#execute if score #config raijin.xpt matches 2 at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run tp @s ~ ~ ~
# Tp sounds -fix for mechanics. or not for charming failed attempts.
execute at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id as @s run function raijin:fr/tpsound

#xp pass off (xp is read only so exp point became a pss off for that system.  reduce was meant to subtract the equiv value in xp)
#scoreboard players operation @s raijin.exp.point = @s raijin.xp
#execute unless score #config raijin.xpt matches 0 run scoreboard players operation @s raijin.exp.point = @s raijin.xp
#EXP add
#execute if score #config raijin.exp.lvl2 <= @s raijin.exp.point if score @s raijin.exp.point matches 1.. 
execute if score #config raijin.exp.lvl2 <= @s raijin.exp.point if score @s raijin.exp.point matches 1.. unless score #config raijin.level.cap = @s[scores={raijin.cooldown=0}] raijin.exp.level at @e[type=trident,limit=1,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run scoreboard players operation @s raijin.exp.point += #config raijin.exp.lvl2
#execute unless score @s raijin.exp.point < #config raijin.exp.lvl2 unless score #config raijin.level.cap = @s[scores={raijin.cooldown=0}] raijin.exp.level at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run scoreboard players operation @s raijin.exp.point += #config raijin.exp.lvl2
########execute at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:exp/adder

#execute at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run function raijin:exp/adder
#cd msg
tag @s[scores={raijin.cooldown=0}] add frcdmsg
execute unless score #config raijin.cooldown matches 0..10 run tellraw @s[scores={raijin.cooldown=1..},tag=frcdmsg] ["",{"text":"Flying Raijin:","color":"gold"},{"text":" Cooling Down","color":"red"}]
tag @s[scores={raijin.cooldown=1..}] remove frcdmsg
#tag @s[scores={raijin.exp.point=0}] add frncmsg
#tag @s[scores={raijin.exp.point=1..}] remove frncmsg
#execute if score @s raijin.xpt <= @s raijin.exp.point at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run tellraw @s[scores={raijin.exp.point=0}] ["",{"text":"Flying Raijin:","color":"gold"},{"text":" Not enough Chakra","color":"red"}]


#tellraw @s[scores={raijin.xp=0}] ["",{"text":"Flying Raijin:","color":"gold"},{"text":" Not enough Chakra","color":"red"}]
# cooldown
execute at @e[limit=1,type=trident,scores={raijin_id=1..},tag=rtp] if score @e[type=trident,limit=1,distance=..0,tag=rtp] raijin_id = @s raijin_id as @s[scores={raijin.cooldown=0}] run scoreboard players operation @s raijin.cooldown = @s raijin.cdtracker
#tag @s[scores={raijin.cooldown=1..}] remove frcdmsg
# may break things (moved to unlock cd)
# scoreboard players reset @e raijin_tag_along

#move to 10 second seperate tick
#function raijin:exp/level_up
