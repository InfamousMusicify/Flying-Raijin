# 2 - Inhaus preset
scoreboard players set #preset raijin.config 2
##### ##### ##### ##### ##### ##### ##### ##### 

scoreboard players set #raijin_lock raijin.config 60

scoreboard players set #cooldown raijin.config 0
scoreboard players set #cdtracker raijin.config 0

scoreboard players set #cdmsg_wait raijin.config 1
scoreboard players set #cdmsg_ready raijin.config 1

scoreboard players set #immortal raijin.config 1
scoreboard players set #save_trident raijin.config 0
scoreboard players set #save_raijin raijin.config 0
scoreboard players set #autorecall raijin.config 1

# # # # #
execute store result score #sendCommandFeedback raijin.config run gamerule sendCommandFeedback
execute if score #sendCommandFeedback raijin.config matches 1 run function raijin:hide_command_feedback

