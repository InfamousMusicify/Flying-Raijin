# save_raijin
#say save raijin
#

#data merge entity @s {life:1s,Invulnerable:1b}
#execute if score #immortal_trident raijin.config matches 1.. as @e[type=minecraft:trident,scores={raijin_id=0..}] run data merge entity @s {life:1s,Invulnerable:1b}
#execute if score #immortal_raijin raijin.config matches 1.. as @e[type=minecraft:trident,predicate=raijin:raijin] run data merge entity @s {life:1s,Invulnerable:1b}

#execute unless entity @s[tag=raijin_saved] run data modify entity @s DealtDamage set value 1b
#tag @s add raijin_saved

# stop momentum
data merge entity @s {Motion:[0.0,0.0,0.0]}
# reset life    -this may be kind of funky, if auto recall is on it basically make s tridents that are never picked up immortal in time, although the chances are pretty low unless someone is afk on a cliffs edge....
data merge entity @s {life:1s}
# summon trident to owner
execute at @a if score @s raijin_id = @p[sort=nearest] raijin_id run tp @s ~ ~ ~
# reset cooldown, bug fix for constant resummoning
execute if score #instant_recall raijin.config matches 1.. run scoreboard players operation @s raijin_lock = #raijin_lock raijin.config


##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
#tp @e[limit=1,distance=..0,type=trident,scores={raijin_id=1..},tag=rtp] @s