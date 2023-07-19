
scoreboard players remove @s raijin.cooldown 1

execute if score #cdmsg_ready raijin.config matches 0 if score @s raijin.cdtracker matches 10.. run tellraw @s[scores={raijin.cooldown=1},tag=!frcdmsg] ["",{"text":"Flying Raijin:","color":"gold"},{"text":" Ready","color":"yellow"}]


# add unless config and player turn off switches for this msg and the other.
