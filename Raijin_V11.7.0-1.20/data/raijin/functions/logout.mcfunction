# logout
# say logout
#

recipe take @s raijin:chakra_rcp
advancement revoke @s only raijin:chakra_adv
recipe take @s raijin:items_rcp
advancement revoke @s only raijin:items_adv

scoreboard players add @s raijin.cooldown 0
scoreboard players set @s raijin_logout 0
