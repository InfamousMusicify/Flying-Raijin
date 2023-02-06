# fr/precraft
# raijin:Craft  
execute at @e[type=minecraft:armor_stand,tag=Cursed_chakra,sort=nearest] run function raijin:fr/craft
kill @e[type=minecraft:armor_stand,tag=Cursed_chakra,sort=nearest]
scoreboard players set @a chakra 0

# Redundancy for busy servers
#execute if score #last raijin_id matches 2147483646.. run function raijin:reinstall

