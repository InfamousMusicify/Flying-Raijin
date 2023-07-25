# logout
# say logout
#

# take advs and rcps
recipe take @s raijin:chakra_rcp
advancement revoke @s only raijin:chakra_adv
recipe take @s raijin:items_rcp
advancement revoke @s only raijin:items_adv
# score bug fixes
scoreboard players add @s raijin_lock 0
scoreboard players add @s raijin.cooldown 0
# # # end
scoreboard players set @s raijin_logout 0
