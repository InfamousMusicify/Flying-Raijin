# raijin:lockon
#say raijinlock
# set player lockon score to 1 minute cooldown
#scoreboard players set @s raijin_lock 70
scoreboard players operation @s raijin_lock = #config raijin_lock
# bug fix to activate trident score
scoreboard players add @e[type=trident,sort=nearest] raijin_id 0
# Set thrown trident score to player ID.  # Called by tick (at player who throws trident)
execute store result score @e[sort=nearest,scores={raijin_id=0},type=trident,limit=1,nbt={Trident: {id: "minecraft:trident", Count: 1b, tag: {Tags: ["Raijin"]}}}] raijin_id run scoreboard players get @s raijin_id
# tag trident for recall (fr lvl 1)
execute at @e[sort=nearest,type=trident,scores={raijin_id=1..}] run tag @e[type=trident,limit=1,distance=..0] add rtp
#execute at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s raijin_id run tag @e[type=trident,limit=1,distance=..0] add rtp

# test for raijin tag along
# execute store result score @e[sort=nearest,distance=..12] raijin_tag_along run scoreboard players get @s raijin_id


# Reset RajinThrow Score
#scoreboard players set @s raijin_throw 0
# scoreboard players reset @s raijin_crouch

# Exp gain and level up
function raijin:exp/level_up
#function raijin:set_check