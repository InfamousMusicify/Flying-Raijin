execute as @s[scores={raijin_crouch=1..}] run function raijin:fr/lvl_1_item

execute at @s run function raijin:tpsound

tp @e[limit=1,distance=..0,type=trident,scores={raijin_id=1..},tag=rtp] @s

function raijin:tpsound

scoreboard players operation @s raijin.cdtracker = #config raijin.cooldown
scoreboard players operation @s[scores={raijin.cooldown=0}] raijin.cooldown = @s raijin.cdtracker
