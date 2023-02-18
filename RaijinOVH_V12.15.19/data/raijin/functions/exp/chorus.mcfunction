#advancement revoke @s only raijin:exp_chorus
#say chorus test
# hardcoded exp (backup option.)
#scoreboard players add @s raijin.exp.points 5
# config crossover
scoreboard players operation @s raijin.exp.point += #config raijin.exp.chorus
scoreboard players set @s raijin.exp.chorus 0
execute unless score #config raijin.level.cap = @s raijin.exp.level if score @s raijin.exp.point >= @s raijin.exp.cap run function raijin:exp/do_level_up
function raijin:exp/mid_reset
