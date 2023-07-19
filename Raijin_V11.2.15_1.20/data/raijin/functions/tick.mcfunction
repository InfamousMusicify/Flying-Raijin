# raijin:tick
# say tick
#
schedule function raijin:tick 1t


# Login Player ID, Per Raijin
execute as @a unless score @s raijin_id matches 1.. store result score @s raijin_id run scoreboard players add #last raijin_id 1
execute as @a[scores={raijin_logout=1..}] run function raijin:logout

# save tridents from void
execute if score #save_trident raijin.config matches 0 as @e[type=minecraft:trident,predicate=raijin:loyal,tag=!trident_saved] run function raijin:save_trident
execute if score #save_raijin raijin.config matches 0 as @e[type=minecraft:trident,predicate=raijin:loyal_raijin,tag=!trident_saved] run function raijin:save_raijin

# trident ID and lockon
execute as @a[scores={raijin_throw=1..}] run function raijin:raijin_lock

# Raijin
execute as @a[scores={raijin=1..,raijin_lock=1..}] run function raijin:fr/lvl
scoreboard players set @a raijin 0
scoreboard players set @a raijin_crouch 0

# raijin cooldown
execute as @a[scores={raijin.cooldown=1..}] run function raijin:cooldown

# Craft trident from chakra
execute as @a[scores={chakra=1..}] run function raijin:craft_start
scoreboard players set @a chakra 0
