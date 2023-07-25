#
#

kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}},limit=1,distance=..1]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:name_tag",Count:1b}},limit=1,distance=..1]
function raijin:craft_effects

loot give @p loot raijin:raijin_loot
loot give @p loot raijin:kuch_loot