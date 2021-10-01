# raijin Tick / Calls all functions
# Login Player ID, Per Raijin
execute as @a unless score @s raijin_id matches 1.. store result score @s raijin_id run scoreboard players add #last raijin_id 1
# Teleport Detector
execute as @a[scores={raijin_throw=1..}] run function raijin:lockon
# TP / version for the offhand.
execute as @a[scores={raijin=1..,raijin_lock=1..61},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Raijin"]}}]}] run function raijin:fr_lvl_2
scoreboard players set @a raijin 0
# Trident Lock Cooldown (for more accurate TP)
execute as @a[scores={raijin_lock=61}] run function raijin:unlock_cd
# Crafting / / Spare
execute at @a[scores={chakra=1..}] at @e[sort=nearest,distance=..10,type=minecraft:armor_stand,tag=Cursed] run function raijin:precraft
scoreboard players set @a chakra 0

##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### #####
# Null, because of player IDs, trdients are cancer to track in flight.
# execute as @a[scores={raijin=1.., raijin_lock=1..61}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag: {Tags: ["Raijin"]}}}] run function raijin:test1
