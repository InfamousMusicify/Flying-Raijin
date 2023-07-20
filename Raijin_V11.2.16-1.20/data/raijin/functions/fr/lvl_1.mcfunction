# raijin:fr/lvl_1
#
#

# at trident tp sounds
playsound minecraft:ui.toast.in master @a[distance=..25] ~ ~ ~
# at player tp sounds
execute at @s run playsound minecraft:ui.toast.in master @a[distance=..25] ~ ~ ~
# summon items for crouching player
execute as @s[scores={raijin_crouch=1..}] run tp @e[type=item,sort=nearest,distance=..8] @s
# summon trident
tp @e[limit=1,distance=..0,type=trident,scores={raijin_id=1..},tag=rtp] @s

# store cooldown scores -new admin based storage
scoreboard players operation @s raijin.cooldown = #cooldown raijin.config
# old exp arb storage
# scoreboard players operation @s raijin.cdtracker = #cooldown raijin.config
# scoreboard players operation @s raijin.cooldown = @s raijin.cdtracker
#
#scoreboard players operation @s[scores={raijin.cooldown=0}] raijin.cooldown = @s raijin.cdtracker
