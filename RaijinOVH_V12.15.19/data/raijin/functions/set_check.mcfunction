#set check
# custom exp and exp adder - execute if score #config raijin.xpt matches 1..2 

#scoreboard players operation @a raijin.cdtracker = #config raijin.cdtracker
# spare exp system configs
execute if score #config raijin.xpt matches 2 run scoreboard players operation @a raijin.cdtracker = #config raijin.cdtracker
execute if score #config raijin.xpt matches 0 run scoreboard players operation @a raijin.cdtracker = #config raijin.cdtracker
#main exp system passoff
execute unless score #config raijin.cdtracker matches 100 run scoreboard players operation @s raijin.cdtracker = #config raijin.cdtracker
#execute unless score #config raijin.cooldown matches 100 run scoreboard players operation @s raijin.cooldown = #config raijin.cooldown
#scoreboard players set @s raijin.step 100
#scoreboard players operation @s raijin.step = #config raijin.step
#scoreboard players set @s raijin.growth 90
#scoreboard players operation @s raijin.growth = #config raijin.growth
#scoreboard players set @s raijin.exp.level 1
#scoreboard players operation @s raijin.exp.level = #config raijin.exp.level
#scoreboard players set @s raijin.exp.cap 40000
#scoreboard players operation @s raijin.exp.cap = #config raijin.exp.cap
# 33
#scoreboard players operation @s raijin.level.cap = #config raijin.level.cap
# 100
#scoreboard players operation @s raijin.cdtracker = #config raijin.cdtracker


#scoreboard players add @s raijin.cooldown 0
#coreboard players add @s raijin.netportal 0
#scoreboard players add @s raijin.exp.netportal 0
#scoreboard players add @s raijin.exp.endportal 0
#scoreboard players add @s raijin.exp.endgate 0
#scoreboard players add @s raijin.exp.point 0