# raijin:test1  (executes as player who used raijin teleport click)

# tag along pt 1
# scoreboard players set @e raijin_tag_along 0

# working
#     execute at @s run execute store result score @e[sort=nearest,distance=..6] raijin_tag_along run scoreboard players get @a[scores={raijin=1..,raijin_crouch=1..},sort=nearest,limit=1] raijin_id
#        execute at @s run execute store result score @e[limit=7,sort=nearest,distance=..6] raijin_tag_along run scoreboard players get @a[scores={raijin=1..,raijin_crouch=1..},sort=nearest,limit=1] raijin_id
# scoreboard players add @e raijin_tag_along 0



# sexy working split player mark, cooldown in unlcok_cd(off rn)
###               execute as @s[scores={raijin_crouch=1..}] as @e[scores={raijin_tag_along=1..},sort=nearest,distance=1..] run scoreboard players reset @s raijin_tag_along
# execute at @s run execute store result score @e[scores={raijin_tag_along=0},sort=nearest,distance=..6] raijin_tag_along run scoreboard players get @a[scores={raijin=1..,raijin_crouch=1..},sort=nearest,limit=1] raijin_id
###               execute at @s as @e[sort=nearest,distance=..6] unless entity @s[scores={raijin_tag_along=1..}] run execute store result score @s raijin_tag_along run scoreboard players get @a[scores={raijin_crouch=1..},sort=nearest,limit=1] raijin_id



# execute at @s run execute store result score @e[sort=nearest,scores={raijin=0},distance=..6] raijin_tag_along run scoreboard players get @a[scores={raijin=1..,raijin_crouch=1..},sort=nearest,limit=1] raijin_id

# summon minecraft:pig
# summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["Cursed_tagalong"]}

# summon minecraft:pig ~ ~-1000 ~

# keeping because its impossibble to have multiple players mark 1, negates personal tp probs
# scoreboard players set @s raijin_tag_along 0



# TP Player -> Trident
execute at @e[type=trident,scores={raijin_id=1..}] run execute if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run tp @s ~ ~ ~

# tag along pt 2

# working people dragger (crouch activates, there is no tag kill, it is commented out below this mechanic is now a person marker)
# execute as @e[scores={raijin_tag_along=1..}] run execute at @a[scores={raijin=1..},sort=nearest] run execute if score @s raijin_tag_along = @a[limit=1,scores={raijin=1..},sort=nearest] raijin_id run tp @s ~ ~ ~
###            execute as @e[scores={raijin_tag_along=1..}] run execute at @a[scores={raijin=1..},sort=nearest] run execute if score @s raijin_tag_along = @a[limit=1,scores={raijin=1..},sort=nearest] raijin_id run tp @s ~ ~ ~


# scoreboard players set @e raijin_tag_along 0



# Tp sounds
execute at @e[type=trident,scores={raijin_id=1..}] run execute if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id as @s run function raijin:tpsound
# Reset click
scoreboard players set @s raijin 0

#  
scoreboard players reset @s raijin_crouch

# may break things (moved to unlock cd)
# scoreboard players reset @e raijin_tag_along

# kill @e[type=minecraft:armor_stand,tag=Cursed_tagalong,distance=..10,sort=nearest]