# raijin:Craft  execute at @a[scores={chakra=1..}, nbt={SelectedItem:{id:"minecraft:pig_spawn_egg", tag: Chakra}] 
kill @e[type=minecraft:armor_stand,tag=Cursed_chakra,distance=..10,sort=nearest]
execute as @a[scores={chakra=1..}] run function raijin:craft
scoreboard players set @a chakra 0
# Redundancy for busy servers
execute if score #last raijin_id matches 2147483646.. run function raijin:reinstall
