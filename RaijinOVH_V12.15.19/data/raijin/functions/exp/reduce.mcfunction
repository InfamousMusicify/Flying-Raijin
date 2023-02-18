#exp/reduce
# experience subtracter
#execute as @s run
execute as @s run experience add @s -1
execute as @s run scoreboard players remove @s raijin.exp.point 1
execute as @s run schedule function raijin:exp/pre_reduce 1t
#exp checker off in here
#scoreboard players operation @s raijin.exp.point = @s raijin.xp

# use tracker to reduce score to proper amount