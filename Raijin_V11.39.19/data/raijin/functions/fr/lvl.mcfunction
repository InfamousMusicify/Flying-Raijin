# TP / version for both hands.          # Mojang, Add a "BothHands" syntax for item detection or HandItems to work on players or something so i dont have to put in 2 commands every tick!!
#execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Raijin"]}}}] run function raijin:fr/lvl_2
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Raijin"]}}}] run function raijin:fr/s_lvl_2
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Raijin"]}}]}] run function raijin:fr/s_lvl_2
# Recall
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["RaijinL1"]}}}] run function raijin:fr/s_lvl_1
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag: {Tags: ["RaijinL1"]}}]}] run function raijin:fr/s_lvl_1
#tag @s[scores={raijin.cooldown=0}] remove frcdmsg
# if score #config raijin.xpt matches 0 

# xp system
#execute if score #config raijin.xpt matches 1 if score @s raijin.xp >= #config raijin.exp.lvl2 as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Raijin"]}}}] run function raijin:fr/lvl_2_xp
#execute if score #config raijin.xpt matches 1 if score @s raijin.xp >= #config raijin.exp.lvl2 as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Raijin"]}}]}] run function raijin:fr/lvl_2_xp
# Recall
#execute if score #config raijin.xpt matches 1 if score @s raijin.xp >= #config raijin.exp.lvl1 as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["RaijinL1"]}}}] run function raijin:fr/lvl_1_xp
#execute if score #config raijin.xpt matches 1 if score @s raijin.xp >= #config raijin.exp.lvl1 as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag: {Tags: ["RaijinL1"]}}]}] run function raijin:fr/lvl_1_xp


# OG
#execute as @a[scores={raijin=1..,raijin_lock=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Raijin"]}}}] run function raijin:fr/lvl_2
#execute as @a[scores={raijin=1..,raijin_lock=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Raijin"]}}]}] run function raijin:fr/lvl_2
# Recall
#execute as @a[scores={raijin=1..,raijin_lock=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["RaijinL1"]}}}] run function raijin:fr/lvl_1
#execute as @a[scores={raijin=1..,raijin_lock=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag: {Tags: ["RaijinL1"]}}]}] run function raijin:fr/lvl_1
