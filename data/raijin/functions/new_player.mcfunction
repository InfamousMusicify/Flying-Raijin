# new_player
#
#say new player

scoreboard players set @s raijin -1
# 0
scoreboard players add @s raijin.cooldown 0
scoreboard players add @s raijin_lock 0
scoreboard players add @s raijin_irecall 0
scoreboard players add @s raijin_arecall 0
# extra notes
#scoreboard players operation @s raijin_lock = #raijin_lock raijin.config

#recipe take @a raijin:chakra_rcp
#recipe take @a raijin:items

# 100
#scoreboard players operation @s raijin.cdtracker = #config raijin.cooldown

# set presets from admin settings
scoreboard players operation @s raijin_arecall = #raijin_lock raijin.config
scoreboard players operation @s raijin_irecall = #instant_recall raijin.config

