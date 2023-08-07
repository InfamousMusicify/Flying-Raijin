#
#

kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}},limit=1,distance=..1]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:name_tag",Count:1b}},limit=1,distance=..1]
function raijin:craft_effects

# summon loot
loot spawn ~ ~ ~ loot raijin:raijin_loot
loot spawn ~ ~ ~ loot raijin:kuch_loot