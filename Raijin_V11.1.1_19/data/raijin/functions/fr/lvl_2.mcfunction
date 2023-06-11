execute at @s run function raijin:tpsound

tp @s ~ ~ ~

function raijin:tpsound

scoreboard players operation @s raijin.cdtracker = #config raijin.cooldown
scoreboard players operation @s raijin.cooldown = @s raijin.cdtracker
