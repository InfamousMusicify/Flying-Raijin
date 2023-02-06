#exp/reduce
# experience subtracter
#execute as @a[scores={raijin.exp.point=1..}] run
execute as @a[scores={raijin.exp.point=1..}] run experience add @s -1
execute as @a[scores={raijin.exp.point=1..}] run scoreboard players remove @s raijin.exp.point 1
execute as @a[scores={raijin.exp.point=1..}] run schedule function raijin:exp/reduce 1t
#exp checker off in here
#scoreboard players operation @s raijin.exp.point = @s raijin.xp

# use tracker to reduce score to proper amount