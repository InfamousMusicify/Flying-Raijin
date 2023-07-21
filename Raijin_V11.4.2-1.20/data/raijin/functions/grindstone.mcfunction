# raijin:grindstone
#
#
data merge entity @s {Item:{id:"minecraft:trident",Count:1b,tag:{display:{Lore:['{}']},Tags:[]}}}
playsound minecraft:block.grindstone.use block @a[distance=..15]
particle minecraft:soul_fire_flame ~ ~.25 ~ .1 .1 .1 .05 25 force
loot give @p loot raijin:chakra_loot
#say grinded