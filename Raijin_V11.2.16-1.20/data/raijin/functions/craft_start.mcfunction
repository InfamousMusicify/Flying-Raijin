# raijin:craft_start
# 
execute at @s at @e[sort=nearest,type=minecraft:armor_stand,tag=Cursed_chakra,limit=1] run function raijin:craft

kill @e[type=minecraft:armor_stand,tag=Cursed_chakra,distance=..10,sort=nearest]

scoreboard players set @s chakra 0
# # #

# Redundancy for busy servers
execute if score #last raijin_id matches 2147483646.. run function raijin:reinstall
