# raijin Tick / Calls all functions
# Login Player ID, Per Raijin
execute as @a unless score @s raijin_id matches 1.. store result score @s raijin_id run scoreboard players add #last raijin_id 1
# Teleport Detector
execute as @a[scores={raijin_throw=1..}] run function raijin:raijin_lock
# TP / version for both hands.
# Mojang, Add a "BothHands" syntax for item detection or HandItems to work on players or something so i dont have to put in 2 commands every tick!!
execute as @a[scores={raijin=1..,raijin_lock=1..61},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Raijin"]}}}] run function raijin:fr_lvl_2
execute as @a[scores={raijin=1..,raijin_lock=1..61},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Raijin"]}}]}] run function raijin:fr_lvl_2
# (Old school version)
# execute as @a[scores={raijin=1..,raijin_lock=1..61},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Raijin"]}}]}] run function raijin:fr_lvl_2
scoreboard players set @a raijin 0

# Recall
execute as @a[scores={raijin_recall=1..,raijin_lock=1..61},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag: {Tags: ["Raijin"]}}}] run function raijin:fr_lvl_1
execute as @a[scores={raijin_recall=1..,raijin_lock=1..61},nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag: {Tags: ["Raijin"]}}]}] run function raijin:fr_lvl_1
scoreboard players set @a raijin_recall 0
# scoreboard players set @s raijin_crouch 0

# Trident Lock Cooldown (for more accurate TP)
execute as @a[scores={raijin_lock=61}] run function raijin:unlock_cd

# Crafting / / Spare
execute at @a[scores={chakra=1..}] at @e[sort=nearest,distance=..10,type=minecraft:armor_stand,tag=Cursed_chakra] run function raijin:precraft
scoreboard players set @a chakra 0

###

##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### #####
# Null, because of player IDs, trdients are cancer to track in flight.
# execute as @a[scores={raijin=1.., raijin_lock=1..61}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag: {Tags: ["Raijin"]}}}] run function raijin:test1