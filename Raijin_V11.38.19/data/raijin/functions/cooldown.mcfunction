#execute as @s[scores={raijin.cooldown=1}] run scoreboard players operation @s raijin.cooldown = @s raijin.cdtracker
scoreboard players remove @s raijin.cooldown 1

#execute unless score @s raijin.xp matches 0..10 run 
execute unless score @s raijin.cdtracker matches ..10 run tellraw @s[scores={raijin.cooldown=1},tag=!frcdmsg] ["",{"text":"Flying Raijin:","color":"gold"},{"text":" Ready","color":"yellow"}]
# add unless config and player turn off switches for this msg and the other.
