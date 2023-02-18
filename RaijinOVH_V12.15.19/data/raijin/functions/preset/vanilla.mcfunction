# default preset
scoreboard players set #config raijin_lock 70
############################################################ Player Variables - 
#step - curve calc divide base 100 - Applied in "new" by new adv 
scoreboard players set #config raijin.step 100
#player exp level - Arbitrary EXP, no in game analog - Applied in "new" by new adv
scoreboard players set #config raijin.exp.level 1
# real xp point tracker
scoreboard players set #config raijin.xpt 0
#player exp points, per level
scoreboard players set #config raijin.exp.point 1
#Player exp cap, set from global initially - Applied in "new" by new adv
scoreboard players set #config raijin.exp.cap 636
# exppoint curve calc %
scoreboard players set #config raijin.growth 90
scoreboard players set #config raijin.level.cap 33
############################################################ utility
scoreboard players set #config raijin.cooldown 100
scoreboard players set #config raijin.cdtracker 100
scoreboard players set #config raijin.0 0
scoreboard players set #config raijin.num 3
############################################################ Exp Point Variables - Applied at first load, configurable by admins after
scoreboard players set #config raijin.exp.lvl2 3
# recall exp add
scoreboard players set #config raijin.exp.lvl1 2
# raijin.exp.pearl dummy
scoreboard players set #config raijin.exp.pearl 1
# raijin.exp.chorus dummy
scoreboard players set #config raijin.exp.chorus 5
##### No scoreboard or adv for easy tracking of portal uses.  not without massive ovverhead and making your own tracking system.  ---------------- Portals may be trackable via block check, and passoff immeditaly to cooldown.
scoreboard players set #config raijin.netportal 4
scoreboard players set #config raijin.endportal 4
scoreboard players set #config raijin.endgate 4


# OG values - Single digit values. -  expand to scale.
#raijin.exp.lvl2 2
#raijin.exp.lvl1 1
#raijin.exp.pearl 10
#raijin.exp.chorus 11

tellraw @s ["",{"text":"Flying Raijin:","color":"gold"},{"text":" Vanilla Preset Enabled","color":"green"}]
