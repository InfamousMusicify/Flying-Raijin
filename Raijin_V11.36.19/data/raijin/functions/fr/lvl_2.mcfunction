# raijin:test1  (executes as player who used raijin teleport click)
# TP Player -> Trident
# execute at @e[type=trident,scores={raijin_id=1..}] run execute if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run tp @s ~ ~ ~
tp @s ~ ~ ~
# Tp sounds
function raijin:tpsound

#scoreboard players operation @s raijin.cooldown = @s raijin.cdtracker


# may break things (moved to unlock cd)
# scoreboard players reset @e raijin_tag_along


################### moved from parent func

#cooldown
#execute if score #config raijin.exp.lvl2 <= @s raijin.exp.point run 
scoreboard players operation @s raijin.cooldown = @s raijin.cdtracker