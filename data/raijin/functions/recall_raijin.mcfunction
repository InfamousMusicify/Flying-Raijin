


# stop momentum   reset life    -if auto recall is on it basically makes tridents that are never picked up immortal in time, although the chances are pretty low unless someone is afk on a cliffs edge or flying around...
data merge entity @s {Motion:[0d,0d,0d],life:1s}

# summon trident to owner
execute at @a if score @s raijin_id = @p[scores={raijin_arecall=0}] raijin_id run tp @s ~ ~ ~

# reset cooldown, bug fix/option to turn off constant resummoning
# working player stored
execute unless score #instant_recall raijin.config matches 1.. at @a if score @s raijin_id = @p[scores={raijin_irecall=1..,raijin_arecall=0}] raijin_id run scoreboard players operation @s raijin_lock = @p raijin_editlock