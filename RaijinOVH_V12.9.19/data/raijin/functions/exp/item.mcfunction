#exp/item
# done
execute unless score #config raijin.level.cap = @s raijin.exp.level run function raijin:exp/pearl
execute unless score #config raijin.level.cap = @s raijin.exp.level run function raijin:exp/chorus
# WIP below
execute unless score #config raijin.level.cap = @s raijin.exp.level run function raijin:exp/netportal
execute unless score #config raijin.level.cap = @s raijin.exp.level run function raijin:exp/endportal
execute unless score #config raijin.level.cap = @s raijin.exp.level run function raijin:exp/endgate





#execute unless score #config raijin.level.cap = @s raijin.exp.level run function raijin:exp/
#execute unless score #config raijin.level.cap = @s raijin.exp.level run function raijin:exp/








#nether portal detector
#execute as @a run function raijin:exp/netportal_tick
#execute as @a if block ~ ~ ~ minecraft:nether_portal run function raijin:exp/netportal_loop
#execute as @a[scores={raijin.netportal=100..}] run function raijin:exp/netportal
#end portal detect
#execute as @a if block ~ ~ ~ minecraft:end_portal run function raijin:exp/endportal
#execute as @a if block ~ ~ ~ minecraft:end_gateway run function raijin:exp/endgate
