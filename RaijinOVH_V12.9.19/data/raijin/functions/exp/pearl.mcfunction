#advancement revoke @s only raijin:exp_pearl
#say pearl test
# hardcoded exp (backup option.)
#scoreboard players add @s raijin.exp.points 5

# addpoints from config scoreboard
scoreboard players operation @s raijin.exp.point += #config raijin.exp.pearl
#scoreboard players operation #config raijin.exp.pearl += @s raijin.exp.point
scoreboard players set @s raijin.exp.pearl 0

execute unless score #config raijin.level.cap = @s raijin.exp.level if score @s raijin.exp.point >= @s raijin.exp.cap run function raijin:exp/do_level_up
function raijin:exp/mid_reset