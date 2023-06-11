

execute at @s at @e[sort=nearest,distance=..10,type=minecraft:armor_stand,tag=Cursed_chakra] run function raijin:craft

# raijin:Craft  execute at @a[scores={chakra=1..}, nbt={SelectedItem:{id:"minecraft:pig_spawn_egg", tag: Chakra}] 
kill @e[type=minecraft:armor_stand,tag=Cursed_chakra,distance=..10,sort=nearest]
#execute as @e[type=minecraft:armor_stand,tag=Cursed_chakra] run kill @s
#execute as @a[scores={chakra=1..}] run function raijin:craft
scoreboard players set @s chakra 0
# Redundancy for busy servers
execute if score #last raijin_id matches 2147483646.. run function raijin:reinstall
