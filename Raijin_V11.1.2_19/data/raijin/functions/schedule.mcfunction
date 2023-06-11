schedule function raijin:schedule 1s
#execute as @e[type=minecraft:item,tag: {Tags: ["Raijin"],limit=1} at @s if block ~ ~-0.01 ~ minecraft:grindstone run function raijin:grindstone
#execute as @e[type=item,nbt={Tags:["Raijin"]}] at @s if block ~ ~-0.01 ~ minecraft:grindstone run function raijin:grindstone

#execute as @e[type=item,nbt={tag:{Tags:["Raijin"]}}] at @s if block ~ ~-0.01 ~ minecraft:grindstone run function raijin:grindstone
#execute as @e[type=item,nbt={tag:{display:{Lore:['{"text":"Hiraishin No Jutsu","color":"gray","italic":false}']},Tags:["Raijin"]}}] at @s if block ~ ~-0.01 ~ minecraft:grindstone run function raijin:grindstone
#execute as @e[type=item,nbt={id:"minecraft:trident",Count:1b,tag:{display:{Lore:['{"text":"Hiraishin No Jutsu","color":"gray","italic":false}']},Tags:["Raijin"]}}] at @s if block ~ ~-0.01 ~ minecraft:grindstone run function raijin:grindstone
#execute as @e[type=item,nbt={Item:{id:"minecraft:trident",Count:1b,tag:{display:{Lore:['{"text":"Hiraishin No Jutsu","color":"gray","italic":false}']}},Tags:["Raijin"]}}] at @s if block ~ ~-0.01 ~ minecraft:grindstone run function raijin:grindstone
execute as @e[type=item,nbt={Item:{id:"minecraft:trident",Count:1b,tag:{display:{Lore:['{"text":"Hiraishin No Jutsu","color":"gray","italic":false}']}}}}] at @s if block ~ ~-0.01 ~ minecraft:grindstone run function raijin:grindstone


#low end testers
#execute as @e[type=item,nbt={id:"minecraft:trident"}] at @s if block ~ ~-0.01 ~ minecraft:grindstone run function raijin:grindstone
#execute as @e[type=item] at @s if block ~ ~-0.01 ~ minecraft:grindstone run function raijin:grindstone

#execute if data entity @s Item.tag.raijinData.raijin run

# {id:"minecraft:trident",Count:1b,tag:{display:{Lore:['{"text":"Hiraishin No Jutsu","color":"gray","italic":false}']},Tags:["Raijin"]}}
# {tag:{display:{Lore:['{"text":"Hiraishin No Jutsu","color":"gray","italic":false}']},Tags:["Raijin"]}}
# {tag:{display:{Lore:['{"text":"Hiraishin No Jutsu","color":"gray","italic":false}']},Tags:["Raijin"]}}

# {id:"minecraft:trident"}





#say schedule