#say test new
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
scoreboard players operation @s raijin.cdtracker = #config raijin.cooldown
# 0
scoreboard players add @s raijin.cooldown 0
#scoreboard players add @s raijin.netportal 0
#scoreboard players add @s raijin.exp.netportal 0
#scoreboard players add @s raijin.exp.endportal 0
#scoreboard players add @s raijin.exp.endgate 0
#scoreboard players add @s raijin.exp.point 0
scoreboard players add @s raijin_lock 0
#scoreboard players set @s raijin.num -1
################## Other newbie things

recipe give @s raijin:chakra_rcp_swap
recipe give @s raijin:items_swap

#recipe take @a raijin:chakra_rcp
#recipe take @a raijin:items

# extra notes
#scoreboard players operation @s raijin_lock = #config raijin_lock


