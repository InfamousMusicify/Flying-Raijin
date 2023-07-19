# 6 - 
scoreboard players set #preset raijin.config 6
##### ##### ##### ##### ##### ##### ##### ##### 


execute store result score #sendCommandFeedback raijin.config run gamerule sendCommandFeedback
execute if score #sendCommandFeedback raijin.config matches 1 run function raijin:hide_command_feedback