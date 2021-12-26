# Unlock cooldown
# remove point
execute as @a[scores={raijin_lock=1..}] run scoreboard players remove @s raijin_lock 1
# reset tag along players
# execute as @a[scores={raijin_lock=0..1}] run execute if score @s raijin_tag_along = @a[limit=1,sort=nearest,scores={raijin_lock=0..1}] raijin_id run scoreboard players reset @s raijin_tag_along
execute at @a[scores={raijin_lock=0..1}] run execute as @e[scores={raijin_tag_along=1..},sort=nearest] if score @s raijin_tag_along = @a[limit=1,sort=nearest,scores={raijin_lock=0..1}] raijin_id run scoreboard players reset @s raijin_tag_along
# Unlock player lockon after 1 minute
execute as @a[scores={raijin_lock=0..1}] run scoreboard players reset @s raijin_lock
# schedule 1 second/ 1 point score reduction
execute if entity @a[scores={raijin_lock=1..61}] run schedule function raijin:unlock_cd 1s
