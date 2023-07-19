#
#
#
schedule function raijin:tick_1s 1s

# auto recall, unless immortal
execute if score #autorecall raijin.config matches 0 as @e[type=minecraft:trident,predicate=raijin:raijin,scores={raijin_lock=0}] run function raijin:save_raijin
# lockon cooldown
execute as @e[scores={raijin_lock=1..},limit=1] run function raijin:raijin_unlock

execute as @e[type=item,nbt={Item:{id:"minecraft:trident",Count:1b,tag:{Tags: ["Raijin"]}}}] at @s if block ~ ~-0.01 ~ minecraft:grindstone run function raijin:grindstone

