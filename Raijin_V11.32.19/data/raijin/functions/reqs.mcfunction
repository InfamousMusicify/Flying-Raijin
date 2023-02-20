# Creates all Raijin Reqs
# crafting
scoreboard objectives add chakra minecraft.used:minecraft.pig_spawn_egg
# flying raijin level 2 (teleport to trident)
scoreboard objectives add raijin minecraft.used:minecraft.carrot_on_a_stick
# flying raijin level 1 (Summon Trident)
#scoreboard objectives add raijin_recall minecraft.used:minecraft.carrot_on_a_stick
# trident throw utility tracker (Raijin Lock timer trigger, when thrown)
scoreboard objectives add raijin_throw minecraft.used:minecraft.trident
# Player IDs (Patch tracker #patch)-(for tag along function? maybe deprecated must check.)
scoreboard objectives add raijin_id dummy
# Trident in world filter (tracks 70 seconds, used to sync lockon for each player)
scoreboard objectives add raijin_lock dummy
execute unless score #config raijin_lock matches 0.. unless score #config raijin_lock matches ..0 run scoreboard players set #config raijin_lock 70
# Patch Tracker
# scoreboard objectives add raijin_uid dummy "patch tracker"

scoreboard objectives add raijin_crouch minecraft.custom:minecraft.sneak_time

# scoreboard objectives add raijin_tag_along dummy


############################################################ Player Variables - 
#step - curve calc divide base 100 - Applied in "new" by new adv 
#scoreboard objectives add raijin.step dummy
#execute unless score #config raijin.step matches 0.. unless score #config raijin.step matches ..0 run scoreboard players set #config raijin.step 100
##player exp level - Arbitrary EXP, no in game analog - Applied in "new" by new adv
#scoreboard objectives add raijin.exp.level dummy
#execute unless score #config raijin.exp.level matches 0.. run scoreboard players set #config raijin.exp.level 1
## real xp point tracker
##scoreboard objectives add raijin.xp xp
##scoreboard objectives add raijin.xpt dummy
#execute unless score #config raijin.xpt matches 0.. run scoreboard players set #config raijin.xpt 0
##player exp points, per level
#scoreboard objectives add raijin.exp.point dummy
#execute unless score #config raijin.exp.point matches 0.. unless score #config raijin.exp.point matches ..0 run scoreboard players set #config raijin.exp.point 1
##Player exp cap, set from global initially - Applied in "new" by new adv
#scoreboard objectives add raijin.exp.cap dummy
#execute unless score #config raijin.exp.cap matches 0.. run scoreboard players set #config raijin.exp.cap 636
## exppoint curve calc %
#scoreboard objectives add raijin.growth dummy
#execute unless score #config raijin.growth matches 0.. unless score #config raijin.growth matches ..0 run scoreboard players set #config raijin.growth 90
##scoreboard objectives add raijin.growth2 dummy
#scoreboard objectives add raijin.level.cap dummy
#execute unless score #config raijin.level.cap matches 0.. run scoreboard players set #config raijin.level.cap 33

############################################################ utility
scoreboard objectives add raijin.cooldown dummy
execute unless score #config raijin.cooldown matches 0.. run scoreboard players set #config raijin.cooldown 40
scoreboard objectives add raijin.cdtracker dummy
execute unless score #config raijin.cdtracker matches 0.. run scoreboard players set #config raijin.cdtracker 40
#scoreboard objectives add raijin.0 dummy
#execute unless score #config raijin.0 matches 0.. unless score #config raijin.0 matches ..0 run scoreboard players set #config raijin.0 0
#scoreboard objectives add raijin.num dummy
#execute unless score #config raijin.num matches 0.. unless score #config raijin.num matches ..0 run scoreboard players set #config raijin.num 3

############################################################ Global Variables - Applied at load
#global exp points, per level  #register
#scoreboard objectives add raijin.globalgain dummy
#global step
#scoreboard objectives add raijin.globalstep dummy
#scoreboard players set #config raijin.globalstep 1
#global exp cap, set from global initially
#scoreboard objectives add raijin.globalmaxlevel dummy
#scoreboard players set #config raijin.global.maxlevel 1
#global growth
#scoreboard objectives add raijin.globalgrowth dummy
#scoreboard players set #config raijin.globalgrowth 1


############################################################ Exp Point Variables - Applied at first load, configurable by admins after
# OG values - Single digit values. -  expand to scale.
#raijin.exp.lvl2 2
#raijin.exp.lvl1 1
#raijin.exp.pearl 10
#raijin.exp.chorus 11
# main riajin exp add
#scoreboard objectives add raijin.exp.lvl2 dummy
#execute unless score #config raijin.exp.lvl2 matches 0.. unless score #config raijin.exp.lvl2 matches ..0 run scoreboard players set #config raijin.exp.lvl2 3
## recall exp add
#scoreboard objectives add raijin.exp.lvl1 dummy
#execute unless score #config raijin.exp.lvl1 matches 0.. unless score #config raijin.exp.lvl1 matches ..0 run scoreboard players set #config raijin.exp.lvl1 2
##scoreboard objectives add raijin.exp.pearl dummy
#scoreboard objectives add raijin.exp.pearl minecraft.used:minecraft.ender_pearl
#execute unless score #config raijin.exp.pearl matches 0.. unless score #config raijin.exp.pearl matches ..0 run scoreboard players set #config raijin.exp.pearl 1
##scoreboard objectives add raijin.exp.chorus dummy
#scoreboard objectives add raijin.exp.chorus minecraft.used:minecraft.chorus_fruit
#execute unless score #config raijin.exp.chorus matches 0.. unless score #config raijin.exp.chorus matches ..0 run scoreboard players set #config raijin.exp.chorus 5
###### No scoreboard or adv for easy tracking of portal uses.  not without massive ovverhead and making your own tracking system.  ---------------- Portals may be trackable via block check, and passoff immeditaly to cooldown.
#scoreboard objectives add raijin.netportal dummy
#execute unless score #config raijin.netportal matches 0.. unless score #config raijin.netportal matches ..0 run scoreboard players set #config raijin.netportal 4
#scoreboard objectives add raijin.endportal dummy
#execute unless score #config raijin.endportal matches 0.. unless score #config raijin.endportal matches ..0 run scoreboard players set #config raijin.endportal 4
#scoreboard objectives add raijin.endgate dummy
#execute unless score #config raijin.endgate matches 0.. unless score #config raijin.endgate matches ..0 run scoreboard players set #config raijin.endgate 4


############################################################ New stuff
#logout/in tracker for new/login advs
scoreboard objectives add raijin_logout minecraft.custom:minecraft.leave_game



#patch activate
# execute unless score #patch raijin_id matches 0.. unless score #patch raijin_id matches ..0 run scoreboard players add #patch raijin_id 0

############################################################ Notes - 
#27 is based off the prcie for an iron nugget in my shop pack, if someone chooses to use -27 as their default for Raijin Use, Level 1 to 2 must be 2x27, =54
#leveling curve:
# 54 points from lvl 1 to level 2
# 300 from lvl 2 to level 3
# 900 to 4
# 1600 to 5
# 6 = 3000
# 7 = 9000
# 8 = 
#elite dangerous
#0 
#40,000 
#270,000 
#1,140,000 
#4,200,000 
#10,000,000
#35,000,000 
#116,000,000 
#320,000,000 
#640,000,000 
#960,000,000 
#1,280,000,000 
#1,600,000,000 
#1,920,000,000

# alternate idea
#0
#54
#400 
#2,700 
#11,400 
#42,000 
#1,00,000 
#3,50,000 
#11,60,000 
#32,00,000 
#64,00,000 
#96,00,000 
#12,800,000 
#16,000,000 
#19,200,000 


############################################################ Jakes base info
#experience points
#level current
#step variable
#exp cap variable
#Growth = 1

### Level Cap?
### Variosu options later.

