# 10 - Immortal Raijin
scoreboard players set #preset raijin.config 10
##### ##### ##### ##### ##### ##### ##### ##### 

scoreboard players set #raijin_lock raijin.config 60

scoreboard players set #auto_recall raijin.config 0
scoreboard players set #instant_recall raijin.config 0

scoreboard players set #cooldown raijin.config 0
scoreboard players set #cdmsg_wait raijin.config 0
scoreboard players set #cdmsg_ready raijin.config 0

scoreboard players set #immortal_trident raijin.config 0
scoreboard players set #immortal_raijin raijin.config 1

scoreboard players set #save_trident raijin.config 0
scoreboard players set #save_raijin raijin.config 0

function raijin:preset/raijin_relock

##### ##### ##### ##### ##### ##### ##### ##### ##### 
execute store result score #sendCommandFeedback raijin.config run gamerule sendCommandFeedback
execute if score #sendCommandFeedback raijin.config matches 1 run function raijin:hide_command_feedback