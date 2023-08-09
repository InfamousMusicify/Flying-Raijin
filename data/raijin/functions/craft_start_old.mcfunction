# raijin:craft_start
# 
execute at @s at @e[sort=nearest,type=minecraft:armor_stand,tag=raijin_chakra,limit=1] run function raijin:craft_old
#kill @e[type=minecraft:armor_stand,tag=raijin_chakra,distance=..10,sort=nearest]
execute as @e[type=minecraft:armor_stand,sort=nearest,tag=raijin_chakra] run kill @s
scoreboard players set @s raijin_chakra 0
# # #

# Redundancy for busy servers
execute if score #last raijin_id matches 2147483646.. run function raijin:id_maxed
