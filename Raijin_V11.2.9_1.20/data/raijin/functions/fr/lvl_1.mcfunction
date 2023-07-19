# raijin:fr/lvl_1
# summon items for crouching player
execute as @s[scores={raijin_crouch=1..}] run tp @e[type=item,sort=nearest,distance=..8] @s
# at player tp sounds
execute at @s run function raijin:tpsound
# summon trident
tp @e[limit=1,distance=..0,type=trident,scores={raijin_id=1..},tag=rtp] @s
# at trident tp sounds
function raijin:tpsound
# store cooldown scores
scoreboard players operation @s raijin.cdtracker = #cooldown raijin.config
scoreboard players operation @s raijin.cooldown = @s raijin.cdtracker
#scoreboard players operation @s[scores={raijin.cooldown=0}] raijin.cooldown = @s raijin.cdtracker
