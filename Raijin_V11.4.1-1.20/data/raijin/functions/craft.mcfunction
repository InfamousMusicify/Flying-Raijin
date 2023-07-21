# Merge data for  Raijin Items
data merge entity @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:trident",Count:1b}},sort=nearest,distance=..15] {Item:{id:"minecraft:trident",Count:1b,tag:{display:{Lore:['{"text":"Hiraishin No Jutsu","color":"gray","italic":false}']},Tags:["Raijin"]}}}
# Link give and detector
execute unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Raijin"]}}]}] run loot give @s loot raijin:fr_lvl_2_link
execute unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Kuchiyose"]}}]}] run loot give @s loot raijin:fr_lvl_1_link
# Play Crafting Sounds and particles
execute at @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:trident",Count:1b}},sort=nearest,distance=..3] run function raijin:craft_effects


#execute as @e[type=minecraft:armor_stand,tag=raijin_chakra] run kill @s

