# raijin:load
### Update Patch ###
execute if score #patch raijin_id matches ..40 run function raijin:patch
# Update patch number when pathcing,         ^ also update internal numbers. ^
### ### ###
# fix scoreboard overload (1 under 32-bit integer limit)
execute if score #last raijin_id matches 2147483646.. run function raijin:uninstall
###
# Scoreboard add #
function raijin:reqs
# 

# # # # # # # # # # #
scoreboard players set @a chakra 0
#____________________________________________________________________________________________________________________________#
# Axioms:  Mark is now in Raijin, Harishin No Jutsu.  Flying raijin level 1
# fr is faster than hnj or raijin confusion, exmp: fr_lvl_1, fr_lvl_2
# fr = flying raijin
# fr_lvl_1 or fr_lvl_2
# fr_lvl_1_adv  -  fr_lvl_1_recp  -  fr_lvl_1_loot  -  Etc.
