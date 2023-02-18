# fr/craft
data merge entity @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:trident",Count:1b}},sort=nearest,distance=..10] {Item:{id:"minecraft:trident",Count:1b,tag:{display:{Lore:['{"text":"Hiraishin No Jutsu","color":"gray","italic":false}']},Tags:["Raijin"]}}}
# Link give and detector
execute unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Raijin"]}}]}] run loot give @s loot raijin:fr_lvl_2_link
execute unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["RaijinL1"]}}]}] run loot give @s loot raijin:fr_lvl_1_link
# Play Crafting Sounds and particles
execute at @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:trident",Count:1b}},sort=nearest,distance=..3] run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..16] ~ ~ ~ 1 1
execute at @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:trident",Count:1b}},sort=nearest,distance=..3] run playsound minecraft:block.enchantment_table.use master @a[distance=..16] ~ ~ ~ 1 1
execute at @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:trident",Count:1b}},sort=nearest,distance=..3] run particle minecraft:soul_fire_flame ~ ~.25 ~ .1 .1 .1 .05 100 force
execute at @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:trident",Count:1b}},sort=nearest,distance=..3] run particle minecraft:poof ~ ~.55 ~ .1 .1 .1 .01 6 force
execute at @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:trident",Count:1b}},sort=nearest,distance=..3] run particle minecraft:flash ~ ~2 ~1 0 1 1 .025 5 force
