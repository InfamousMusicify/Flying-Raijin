#say do level up
# level add (add 1 level of exp unless the level cap is met)
scoreboard players add @s raijin.exp.level 1

# add extra points back onto new cap.
scoreboard players operation @s raijin.exp.point -= @s raijin.exp.cap
# levelup step and growth calcs
# multiply exp cap by 100
scoreboard players operation @s raijin.exp.cap *= @s raijin.step
# divide exp by growth variable (90 by default)
scoreboard players operation @s raijin.exp.cap /= @s raijin.growth
#scoreboard players operation @s raijin.growth2 = @s raijin.exp.cap
#scoreboard players operation @s raijin.exp.cap += @s raijin.growth2
#scoreboard players operation @s raijin.growth2 /= @s raijin.growth

# reduce cdtracker unless cd tracker is zero
execute unless score @s raijin.cdtracker <= #config raijin.0 run scoreboard players operation @s raijin.cdtracker -= #config raijin.num
#Final Level exp drop (if the level cap is met set cooldown to zero)
execute if score #config raijin.level.cap = @s raijin.exp.level run scoreboard players set @s raijin.cdtracker 0

#Hard reset everything to zero at max level (minus tracker and level)
execute if score #config raijin.level.cap = @s raijin.exp.level run function raijin:exp/reset

execute unless score #config raijin.level.cap = @s raijin.exp.level run tellraw @s ["",{"text":"Flying Raijin Level: ","color":"gold"},{"score":{"name":"@s","objective":"raijin.exp.level"},"color":"red"},{"text":" - Level Up!","color":"gray"},{"text":" Next Level:","color":"gray"},{"score":{"name":"@s","objective":"raijin.exp.point"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"raijin.exp.cap"},"color":"yellow"}]
execute if score #config raijin.level.cap = @s raijin.exp.level run tellraw @s ["",{"text":"Flying Raijin Level: ","color":"gold"},{"score":{"name":"@s","objective":"raijin.exp.level"},"color":"red"},{"text":" - Max Level!","color":"yellow"}]

# redundancy for level caps
scoreboard players operation @s raijin.level.cap = #config raijin.level.cap

# store scores


# reverse this somehow.
#execute store result score @s raijin.exp.level run data get storage raijin:storage players[-1].raijin[-1].level
#
#execute store result storage raijin:storage players[-1].raijin[-1].level byte 1 run scoreboard players get raijin.exp.level
#execute store result storage raijin:storage players[-1].raijin[-1].level byte 1 run scoreboard players get @s raijin.exp.level

##############################################
#execute store result storage for_loop_a result__i byte 1 run scoreboard players get %for__i .for_a
#data modify entity @s Rotation set from storage markrec:storage players[-1].marks[-1].rot
#execute store result score #marks marks.dummy run data get storage markrec:storage players[-1].marks
#execute store result storage raijin:storage players[-1].marks[-1].id int 1 run scoreboard players get #mark marks.dummy
#data modify storage raijin:storage players[-1].raijin[-1].level set from entity @s Dimension
#data modify storage raijin:storage players[-1].marks[-1].name set from entity @s SelectedItem.tag.display.Name
#data modify storage raijin:storage players[-1].marks[-1].pos set from entity @s Pos
#data modify storage raijin:storage players[-1].marks[-1].rot set from entity @s Rotation
#execute if data storage raijin:storage players[-1].marks[-1].name run tag @s add marks.nameSet
#execute store result entity @s Trident.tag.Damage short 1 run scoreboard players get @s TridentDamage
#execute as @e[type=minecraft:trident] store result score @s TridentDamage run data get entity @s Trident.tag.Damage
