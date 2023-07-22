# raijin:load
### Update Patch ###
# Player IDs (Patch tracker #patch)-(for tag along function? maybe deprecated must check.)
scoreboard objectives add raijin.config dummy
#execute unless score #patch raijin_id matches 0.. run scoreboard players add #patch raijin_id 0
execute if score #patch raijin.config matches ..90 run function raijin:patch
# Update patch number when pathcing,            ^ and updt internal #'s. ^
# fix scoreboard overload (1 under 32-bit integer limit)
execute if score #last raijin_id matches 2147483646.. run function raijin:uninstall_m
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
# Scoreboard add #
function raijin:load_reqs
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
schedule clear raijin:tick
schedule clear raijin:tick_1s
schedule function raijin:tick 1t
schedule function raijin:tick_1s 1s
#


#____________________________________________________________________________________________________________________________#
# Notes:
# 
#
#
#
#
#
#
