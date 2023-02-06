
#say level up
execute unless score #config raijin.level.cap = @s raijin.exp.level if score @s raijin.exp.point >= @s raijin.exp.cap run function raijin:exp/do_level_up
function raijin:exp/mid_reset
#execute unless score @s raijin.level.cap = #config raijin.level.cap if score @s raijin.exp.point >= @s raijin.exp.cap run function raijin:exp/do_level_up
# scoreboard players operation @s raijin.exp.level += #config raijin.exp.point

# detect exp points over level point cap, up level by 1
#execute if score @s raijin.exp.point <= @s raijin.step run scoreboard players add @s raijin.exp.level 1


# add extra pooints back onto new cap.
#execute if score @s raijin.exp.point <= @s raijin.growth run scoreboard players add @s raijin.exp.

