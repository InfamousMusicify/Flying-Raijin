# raijin Tick / Calls all functions
# Login Player ID, Per Raijin
execute as @a unless score @s raijin_id matches 1.. store result score @s raijin_id run scoreboard players add #last raijin_id 1
# Teleport Detector
execute as @a[scores={raijin_throw=1..}] run function raijin:raijin_lock
# TP / version for both hands.
execute as @a[scores={raijin=1..,raijin_lock=1..}] run function raijin:fr/lvl
scoreboard players set @a raijin 0
scoreboard players set @s raijin_crouch 0

# Trident Lock Cooldown (for more accurate TP)
#execute as @a[scores={raijin_lock=61}] run function raijin:unlock_cd

execute as @a[scores={raijin_lock=1..}] run function raijin:fr/pre_ucd
execute as @a[scores={raijin.cooldown=1..}] run function raijin:cooldown

# Crafting / / Spare
execute at @a[scores={chakra=1..}] at @e[sort=nearest,distance=..10,type=minecraft:armor_stand,tag=Cursed_chakra] run function raijin:precraft
scoreboard players set @a chakra 0

###

##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### #####
# Null, because of player IDs, trdients are cancer to track in flight.
# execute as @a[scores={raijin=1.., raijin_lock=1..61}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag: {Tags: ["Raijin"]}}}] run function raijin:test1