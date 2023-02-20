#say unlcokcd
# Unlock cooldown
# remove point
execute as @a[scores={raijin_lock=1..}] run scoreboard players remove @s raijin_lock 1

#####
# reset tag along players
#### Working Off for mechanic
##### execute at @a[scores={raijin_lock=0..1}] run execute as @e[scores={raijin_tag_along=1..},sort=nearest] if score @s raijin_tag_along = @a[limit=1,sort=nearest,scores={raijin_lock=0..1}] raijin_id run scoreboard players reset @s raijin_tag_along

# reset crouch
#execute as @a[scores={raijin_lock=0..1}] run scoreboard players reset @s raijin_crouch
#####
# Unlock player lockon after 1 minute
execute as @a[scores={raijin_lock=0..1}] run scoreboard players reset @s raijin_lock

############################### Last lines
# schedule 1 second/ 1 point score reduction
#execute if entity @a[scores={raijin_lock=1..}] run schedule function raijin:fr/unlock_cd 1s
execute as @a[scores={raijin_lock=1..}] run schedule function raijin:fr/unlock_cd 1s



############ arbitrary extras
# Exp gain and level up (not firing after first tick because server.)
#execute unless score #config raijin.level.cap = @s raijin.exp.level if score @s raijin.exp.point >= @s raijin.exp.cap run function raijin:exp/do_level_up
#function raijin:exp/mid_reset