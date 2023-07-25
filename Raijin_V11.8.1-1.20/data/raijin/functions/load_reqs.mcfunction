# Creates all Raijin Reqs
# crafting
scoreboard objectives add raijin_chakra minecraft.used:minecraft.pig_spawn_egg
# flying raijin level 2 (teleport to trident)
scoreboard objectives add raijin minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add raijin_crouch minecraft.custom:minecraft.sneak_time
# trident throw utility tracker (Raijin Lock timer trigger, when thrown)
scoreboard objectives add raijin_throw minecraft.used:minecraft.trident
# Trident in world filter (tracks 70 seconds, used to sync lockon for each player)
scoreboard objectives add raijin_lock dummy
execute unless score #raijin_lock raijin.config matches 0.. run scoreboard players set #raijin_lock raijin.config 60
#logout/in tracker for new/login advs
scoreboard objectives add raijin_logout minecraft.custom:minecraft.leave_game

############################################################ utility
scoreboard objectives add raijin_id dummy
scoreboard objectives add raijin.cooldown dummy
execute unless score #cooldown raijin.config matches 0.. run scoreboard players set #cooldown raijin.config 0
execute unless score #cdtracker raijin.config matches 0.. run scoreboard players set #cdtracker raijin.config 0
# msgs
execute unless score #cdmsg_wait raijin.config matches 0.. run scoreboard players set #cdmsg_wait raijin.config 0
execute unless score #cdmsg_ready raijin.config matches 0.. run scoreboard players set #cdmsg_ready raijin.config 0
# arb scoreboard presets
execute unless score #immortal_trident raijin.config matches 0.. run scoreboard players set #immortal_trident raijin.config 0
execute unless score #immortal_raijin raijin.config matches 0.. run scoreboard players set #immortal_raijin raijin.config 0
execute unless score #save_trident raijin.config matches 0.. run scoreboard players set #save_trident raijin.config 0
execute unless score #save_raijin raijin.config matches 0.. run scoreboard players set #save_raijin raijin.config 0
execute unless score #auto_recall raijin.config matches 0.. run scoreboard players set #auto_recall raijin.config 0
execute unless score #instant_recall raijin.config matches 0.. run scoreboard players set #instant_recall raijin.config 0

############################################################ extra - arbitrary - aesthetic
execute unless score #preset raijin.config matches 0.. run scoreboard players set #preset raijin.config 1
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


############################################################ CG's base info
#experience points
#level current
#step variable
#exp cap variable
#Growth = 1

### Level Cap?
### Variosu options later.

