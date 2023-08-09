# save_raijin
#say save raijin
#

# stop momentum   reset life    -if auto recall is on it basically makes tridents that are never picked up immortal in time, although the chances are pretty low unless someone is afk on a cliffs edge or flying around...
data merge entity @s {Motion:[0d,0d,0d],life:1s}

# summon trident to owner
execute at @a if score @s raijin_id = @p raijin_id run tp @s ~ ~ ~

# reset cooldown, bug fix/option to turn off constant resummoning
#execute if score #instant_recall raijin.config matches 1.. unless score @s raijin_irecall matches 0 run scoreboard players operation @s raijin_lock = #raijin_lock raijin.config
#idea# execute if score #instant_recall raijin.config matches 1.. unless score @s raijin_irecall matches 1.. run scoreboard players operation @s raijin_lock = @p[sort=nearest] raijin_editlock
# player choice version, trident stored score
#execute unless score #instant_recall raijin.config matches 1.. unless score @s raijin_irecall matches 1.. at @a if score @s raijin_id = @p[sort=nearest] raijin_id run scoreboard players operation @s raijin_lock = @p[sort=nearest] raijin_editlock
# player stored score, doesnt work for god knows why
#execute unless score #instant_recall raijin.config matches 1.. at @a unless score @p[sort=nearest] raijin_irecall matches 1.. if score @s raijin_id = @p[sort=nearest] raijin_id run scoreboard players operation @s raijin_lock = @p[sort=nearest] raijin_editlock
#execute unless score #instant_recall raijin.config matches 1.. at @a if score @s raijin_id = @p raijin_id unless score @p raijin_irecall matches 1.. run tp @s ~ ~ ~
# working player stored
execute unless score #instant_recall raijin.config matches 1.. at @a if score @s raijin_id = @p[scores={raijin_irecall=1..}] raijin_id run scoreboard players operation @s raijin_lock = @p raijin_editlock
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 

# stop momentum
##### data merge entity @s {Motion:[0d,0d,0d]}
# reset life    -if auto recall is on it basically makes tridents that are never picked up immortal in time, although the chances are pretty low unless someone is afk on a cliffs edge or flying around...
##### data merge entity @s {life:1s}


#tp @e[limit=1,distance=..0,type=trident,scores={raijin_id=1..},tag=raijin_tp] @s

#data merge entity @s {life:1s,Invulnerable:1b}
#execute if score #immortal_trident raijin.config matches 1.. as @e[type=minecraft:trident,scores={raijin_id=0..}] run data merge entity @s {life:1s,Invulnerable:1b}
#execute if score #immortal_raijin raijin.config matches 1.. as @e[type=minecraft:trident,predicate=raijin:raijin] run data merge entity @s {life:1s,Invulnerable:1b}


# this has no effect on collection after dmg taken
#execute unless entity @s[tag=raijin_saved] run data modify entity @s DealtDamage set value 1b
#tag @s add raijin_saved