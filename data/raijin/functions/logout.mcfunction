# logout
# say logout
#


# trigger set
#execute unless score @s raijin matches -1.. run scoreboard players set @s raijin -1
scoreboard players set @s raijin -1

# take advs and rcps
recipe take @s raijin:chakra_rcp
advancement revoke @s only raijin:chakra_adv
recipe take @s raijin:items_rcp
advancement revoke @s only raijin:items_adv
# score bug fixes
scoreboard players add @s raijin_lock 0
scoreboard players add @s raijin.cooldown 0



# match scores for old players
execute unless score @s raijin_arecall matches 0.. run scoreboard players operation @s raijin_arecall = #auto_recall raijin.config
execute unless score @s raijin_irecall matches 0.. run scoreboard players operation @s raijin_irecall = #instant_recall raijin.config
execute unless score @s raijin_editlock matches 0.. run scoreboard players operation @s raijin_editlock = #raijin_lock raijin.config


# # # end
scoreboard players set @s raijin_logout 0