# raijin:tick_1s
# say tick_1s
#
schedule function raijin:tick_1s 1s
# lockon cooldown - raijin_unlock  #note: disabled if auto_recall is off to maintain player and trident scores for infinitely/variably long intentional teleport delays, and to restart scores count when recall/immortality is disabled
execute if score #auto_recall raijin.config matches 0 as @e[scores={raijin_lock=1..}] run scoreboard players remove @s raijin_lock 1
#execute as @a[scores={raijin_lock=1..}] run scoreboard players remove @s raijin_lock 1
# disenchant
execute as @e[type=item,nbt={Item:{id:"minecraft:trident",Count:1b,tag:{Tags: ["Raijin"]}}}] at @s if block ~ ~-0.01 ~ minecraft:grindstone run function raijin:grindstone
# Immortal tridents -any/only tridents thrown by a player.
execute if score #immortal_trident raijin.config matches 1.. as @e[type=minecraft:trident,scores={raijin_id=0..}] run data merge entity @s {life:1s,Invulnerable:1b}
# Immortal raijin
execute if score #immortal_trident raijin.config matches 0 if score #immortal_raijin raijin.config matches 1.. as @e[type=minecraft:trident,predicate=raijin:raijin] run data merge entity @s {life:1s,Invulnerable:1b}
# auto recall
execute if score #auto_recall raijin.config matches 0 as @e[type=minecraft:trident,predicate=raijin:raijin,scores={raijin_lock=0}] run function raijin:save_raijin



