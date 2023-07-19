# raijin:fr/lvl_2
# at player sounds
execute at @s run function raijin:tpsound
# tp to trident
tp @s ~ ~ ~
# at trident sounds
function raijin:tpsound
# store cooldown scores
scoreboard players operation @s raijin.cdtracker = #cooldown raijin.config
scoreboard players operation @s raijin.cooldown = @s raijin.cdtracker
