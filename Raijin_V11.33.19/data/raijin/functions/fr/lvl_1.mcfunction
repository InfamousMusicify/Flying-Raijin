# raijin:test1  (executes as player who used raijin recall click)
tp @e[limit=1,distance=..0,type=trident,scores={raijin_id=1..},tag=rtp] @s
# Tp sounds  - execute at @e[type=trident,scores={raijin_id=1..}] run execute if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id as @s run 
function raijin:tpsound

#scoreboard players operation @s raijin.cooldown = @s raijin.cdtracker
scoreboard players operation @s[scores={raijin.cooldown=0}] raijin.cooldown = @s raijin.cdtracker