
clear @s minecraft:knowledge_book
advancement revoke @s only raijin:chakra_adv
recipe take @s raijin:chakra_rcp
loot give @s loot raijin:chakra_loot




#recipe take @a raijin:chakra_rcp
#clear @s minecraft:knowledge_book
#loot give @s loot raijin:chakra_loot
#execute as @s[nbt={Inventory:[{id:"minecraft:knowledge_book"}]}] at @s run function raijin:crafted_chakra
#advancement revoke @s only raijin:chakra_adv
#advancement revoke @s only raijin:chakra_craft
