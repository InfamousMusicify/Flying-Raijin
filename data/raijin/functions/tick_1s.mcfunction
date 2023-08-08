# raijin:tick_1s
# say tick_1s
#
schedule function raijin:tick_1s 1s
# lockon cooldown - raijin_unlock  #note: admin shud disable if auto_recall is off to maintain player and trident scores for infinitely/variably long intentional teleport delays, and to restart scores count when recall/immortality is disabled  -not forced
execute if score #auto_recall raijin.config matches 0 as @e[scores={raijin_lock=1..}] run scoreboard players remove @s raijin_lock 1
#execute as @a[scores={raijin_lock=1..}] run scoreboard players remove @s raijin_lock 1

# Immortal tridents -any/only tridents thrown by a player.
execute if score #immortal_trident raijin.config matches 1.. as @e[type=minecraft:trident,scores={raijin_id=0..}] run data merge entity @s {life:1s,Invulnerable:1b}
# Immortal raijin
execute if score #immortal_trident raijin.config matches 0 if score #immortal_raijin raijin.config matches 1.. as @e[type=minecraft:trident,predicate=raijin:raijin] run data merge entity @s {life:1s,Invulnerable:1b}
# auto recall
execute if score #auto_recall raijin.config matches 0 as @e[type=minecraft:trident,predicate=raijin:raijin,scores={raijin_lock=0}] run function raijin:save_raijin

scoreboard players enable @a raijin
#execute as @a[scores={raijin=1..}] run function raijin:trigger
execute as @a unless score @s raijin matches -1 run function raijin:trigger
#scoreboard players set @a raijin -1
# fuse tag remover
execute as @a[tag=raij_tweak] run function raijin:trigger/kill_timer
# Crafting:
# old crafting on ground
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:name_tag",Count:1b}}] at @e[type=minecraft:item,nbt={Item:{id:"minecraft:ender_eye",Count:1b}},distance=..1] as @e[type=minecraft:item,nbt={Item:{id:"minecraft:trident",Count:1b}},distance=..1] at @s if block ~ ~-0.01 ~ minecraft:enchanting_table run function raijin:craft
# old items craft
#execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:name_tag",Count:1b}}] at @e[type=minecraft:item,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}},distance=..1] run function raijin:crafted_items_old

# Craft trident from chakra
execute as @a[scores={raijin_chakra=1..}] run function raijin:craft_start_old
scoreboard players set @a raijin_chakra 0

# disenchant
execute as @e[type=item,nbt={Item:{id:"minecraft:trident",Count:1b,tag:{Tags: ["Raijin"]}}}] at @s if block ~ ~-0.01 ~ minecraft:grindstone run function raijin:grindstone