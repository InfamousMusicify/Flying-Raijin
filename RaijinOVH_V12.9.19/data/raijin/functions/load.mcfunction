# raijin:load

### Update Patch ###  - tem,p upded, change interanl after im done!
#execute unless score #patch raijin_id matches 0.. run scoreboard players add #patch raijin_id 0
#execute if score #patch raijin_id matches ..60 run function raijin:patch
# Update patch number when pathcing,         ^ also update internal numbers. ^
### ### ###
# fix scoreboard overload (1 under 32-bit integer limit)
#execute if score #last raijin_id matches 2147483646.. run function raijin:reuninstall
###





# Scoreboard add #
function raijin:reqs
# 




# TEMP - Change for testing to check boards
#scoreboard objectives setdisplay sidebar raijin.xp
#scoreboard objectives setdisplay sidebar raijin.exp.point
#scoreboard objectives setdisplay sidebar raijin_id
#function raijin:set_checkscoreboard objectives setdisplay sidebar raijin_lock
#scoreboard objectives setdisplay sidebar raijin.cooldown
#advancement revoke @a only raijin:new
#advancement revoke @a only raijin:netportal
#revoke later
#advancement revoke @a only raijin:netportal
# put in logout
#advancement revoke @a only raijin:new




# # # # # # # # # # #
#scoreboard players set @a chakra 0
#____________________________________________________________________________________________________________________________#
# Axioms:  Mark is now in Raijin, Harishin No Jutsu.  Flying raijin level 1
# fr is faster than hnj or raijin confusion, exmp: fr_lvl_1, fr_lvl_2
# fr = flying raijin
# fr_lvl_1 or fr_lvl_2
# fr_lvl_1_adv  -  fr_lvl_1_recp  -  fr_lvl_1_loot  -  Etc.


# alt+f to highlight
# alt+g to remove highlight