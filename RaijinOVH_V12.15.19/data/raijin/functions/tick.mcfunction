# raijin Tick / Calls all functions
execute as @a[scores={raijin_logout=1..}] run function raijin:logout
##### old top
# Login Player ID, Per Raijin
execute as @a unless score @s raijin_id matches 1.. store result score @s raijin_id run scoreboard players add #last raijin_id 1
# Teleport Detector
execute as @a[scores={raijin_throw=1..}] run function raijin:fr/raijin_lock
scoreboard players set @a raijin_throw 0
# TP / version for both hands.          # Mojang, Add a "BothHands" syntax for item detection or HandItems to work on players or something so i dont have to put in 2 commands every tick!!
execute as @a[scores={raijin=1..,raijin_lock=1..}] run function raijin:fr/lvl
scoreboard players set @a raijin 0
scoreboard players set @s raijin_crouch 0

# Trident Lock Cooldown (for more accurate TP)
execute as @a[scores={raijin_lock=1..}] run function raijin:fr/pre_ucd
execute as @a[scores={raijin.cooldown=1..}] run function raijin:cooldown
#execute as @a[scores={raijin_lock=1..}] run function raijin:fr/unlock_cd
#execute unless score #config raijin_lock = @s raijin_lock as @a[scores={raijin_lock=1..}] run function raijin:fr/pre_ucd
# Crafting / / Spare
execute as @a[scores={chakra=1..}] run function raijin:fr/precraft
scoreboard players set @a chakra 0

##### New stuff
# check for experience
#####      execute as @a run function raijin:exp/level_up
#execute as @a unless score @s raijin.exp.level = #config raijin.level.cap if score @s raijin.exp.point >= @s raijin.exp.cap run function raijin:exp/do_level_up
#execute as @a run function raijin:exp/calcs
# Exp Gain
execute as @a[scores={raijin.exp.pearl=1..}] run function raijin:exp/pre_item
execute as @a[scores={raijin.exp.chorus=1..}] run function raijin:exp/pre_item
execute as @a[scores={raijin.netportal=1..}] run function raijin:exp/item
#execute as @a[scores={raijin.endportal=1..}] run function raijin:exp/item
#execute as @a[scores={raijin.endgate=1..}] run function raijin:exp/item

# last line




#300 raijin exp a minute at max level with no cooldown.  at 1 point per use

#Cut off exp gain and cooldown firing at max level
#cooldown on raijin exp gain

###

##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### #####
# Null, because of player IDs, trdients are cancer to track in flight.
# execute as @a[scores={raijin=1.., raijin_lock=1..61}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag: {Tags: ["Raijin"]}}}] run function raijin:test1












# if math is the language of the universe, then programming is like english vs a bird chirping.
# its all language but there is more context to it
# -mr programs