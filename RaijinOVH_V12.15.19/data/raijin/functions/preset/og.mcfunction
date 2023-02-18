# default preset
scoreboard players set #config raijin_lock 70
############################################################ Player Variables - 
#step - curve calc divide base 100 - Applied in "new" by new adv 
scoreboard players set #config raijin.step 0
#player exp level - Arbitrary EXP, no in game analog - Applied in "new" by new adv
scoreboard players set #config raijin.exp.level 0
# real xp point tracker
scoreboard players set #config raijin.xpt 1
#player exp points, per level
scoreboard players set #config raijin.exp.point 0
#Player exp cap, set from global initially - Applied in "new" by new adv
scoreboard players set #config raijin.exp.cap 636
# exppoint curve calc %
scoreboard players set #config raijin.growth 0
scoreboard players set #config raijin.level.cap 0
############################################################ utility
scoreboard players set #config raijin.cooldown 0
scoreboard players set #config raijin.cdtracker 0
scoreboard players set #config raijin.0 0
scoreboard players set #config raijin.num 0
############################################################ Exp Point Variables - Applied at first load, configurable by admins after
scoreboard players set #config raijin.exp.lvl2 0
# recall exp add
scoreboard players set #config raijin.exp.lvl1 0
# raijin.exp.pearl dummy
scoreboard players set #config raijin.exp.pearl 0
# raijin.exp.chorus dummy
scoreboard players set #config raijin.exp.chorus 0
##### No scoreboard or adv for easy tracking of portal uses.  not without massive ovverhead and making your own tracking system.  ---------------- Portals may be trackable via block check, and passoff immeditaly to cooldown.
scoreboard players set #config raijin.netportal 0
scoreboard players set #config raijin.endportal 0
scoreboard players set #config raijin.endgate 0


# OG values - Single digit values. -  expand to scale.
#raijin.exp.lvl2 2
#raijin.exp.lvl1 1
#raijin.exp.pearl 10
#raijin.exp.chorus 11

tellraw @s ["",{"text":"Flying Raijin:","color":"gold"},{"text":" OG Preset Enabled","color":"green"}]
