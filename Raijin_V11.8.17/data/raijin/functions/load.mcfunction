# raijin:load
### Update Patch ###
execute if score #patch raijin_uid matches ..20 run function raijin:patch
# Update patch number when pathcing,         ^ also update internal numbers. ^
### ### ###
# fix scoreboard overload
execute if score #last raijin_id matches 999999.. run function raijin:uninstall
###
# Scoreboard add #
function raijin:reqs
# # # # # # # # # # #
#____________________________________________________________________________________________________________________________#
# Axioms:  Mark is now in Raijin, Harishin No Jutsu.  Flying raijin level 1
# fr is faster than hnj or raijin confusion, exmp: fr_lvl_1, fr_lvl_2
# fr = flying raijin
scoreboard players set @a chakra 0