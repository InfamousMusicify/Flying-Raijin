# raijin Tick / Calls all functions
# Login Player ID, Per Raijin
execute as @a unless score @s raijin_id matches 1.. store result score @s raijin_id run scoreboard players add #last raijin_id 1
execute as @a[scores={raijin_logout=1..}] run function raijin:logout

# trident ID and lockon
execute as @a[scores={raijin_throw=1..}] run function raijin:raijin_lock
# Raijin
execute as @a[scores={raijin=1..,raijin_lock=1..}] run function raijin:fr/lvl
scoreboard players set @a raijin 0
scoreboard players set @a raijin_crouch 0
# lockon cooldown
execute as @a[scores={raijin_lock=1..}] run function raijin:fr/pre_ucd
# raijin cooldown
execute as @a[scores={raijin.cooldown=1..}] run function raijin:cooldown

# Crafting / / Spare
execute as @a[scores={chakra=1..}] run function raijin:precraft
scoreboard players set @a chakra 0
