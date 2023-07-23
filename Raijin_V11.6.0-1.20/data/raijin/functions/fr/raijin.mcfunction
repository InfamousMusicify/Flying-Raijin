# raijin:fr/lvl_2
#
#

# at trident sounds
playsound minecraft:ui.toast.in master @a[distance=..25] ~ ~ ~
# at player sounds
execute at @s run playsound minecraft:ui.toast.in master @a[distance=..25] ~ ~ ~
# tp to trident
tp @s ~ ~ ~
# store cooldown scores -new admin based storage
scoreboard players operation @s raijin.cooldown = #cooldown raijin.config
# old exp arb storage
# scoreboard players operation @s raijin.cdtracker = #cooldown raijin.config
# scoreboard players operation @s raijin.cooldown = @s raijin.cdtracker


