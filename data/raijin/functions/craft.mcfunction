#
#
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:ender_eye",Count:1b}},limit=1,distance=..1]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:name_tag",Count:1b}},limit=1,distance=..1]
# Merge data for  Raijin Items
data merge entity @s {Item:{id:"minecraft:trident",Count:1b,tag:{display:{Lore:['{"text":"Hiraishin No Jutsu","color":"gray","italic":false}']},Tags:["Raijin"]}}}
# Link give and detector
#execute unless entity @p[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Raijin"]}}]}] run loot give @p loot raijin:raijin_loot
#execute unless entity @p[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Kuchiyose"]}}]}] run loot give @p loot raijin:kuch_loot
# summon loot
loot spawn ~ ~ ~ loot raijin:raijin_loot
loot spawn ~ ~ ~ loot raijin:kuch_loot

# Play Crafting Sounds and particles
function raijin:craft_effects



# Redundancy for busy servers
execute if score #last raijin_id matches 2147483646.. run function raijin:reinstall
