# raijin:fr/lockon
#say lockon
# set player lockon score to 1 minute cooldown
scoreboard players operation @s raijin_lock = #raijin_lock raijin.config
# tracker for non raijin tridents  -old bug fix to activate trident score
scoreboard players add @e[type=trident,sort=nearest] raijin_id 0
# Set thrown trident score to player ID.  # Called by tick (at player who throws trident)
#og# execute store result score @e[sort=nearest,scores={raijin_id=0},type=trident,limit=1,nbt={Trident: {id: "minecraft:trident", Count: 1b, tag: {Tags: ["Raijin"]}}}] raijin_id run scoreboard players get @s raijin_id
execute store result score @e[type=minecraft:trident,limit=1,scores={raijin_id=0},predicate=raijin:raijin] raijin_id run scoreboard players get @s raijin_id
# tag trident for order of teleport -pre predicate redundancy -also easier to type than the predicate.
execute at @e[sort=nearest,type=trident,scores={raijin_id=1..}] run tag @e[type=trident,limit=1,distance=..0] add raijin_tp
# set cooldown on tridents 
scoreboard players add @e[type=trident,predicate=raijin:raijin,sort=nearest] raijin_lock 0
execute as @e[sort=nearest,type=trident,tag=raijin_tp,scores={raijin_id=1..,raijin_lock=0}] run scoreboard players operation @s raijin_lock = #raijin_lock raijin.config
# Reset RajinThrow Score
scoreboard players set @s raijin_throw 0
##### ##### ##### ##### ##### ##### ##### ##### ##### 


# test for raijin tag along        ---Tag Along has been cut because crouching happens to often.
# execute store result score @e[sort=nearest,distance=..12] raijin_tag_along run scoreboard players get @s raijin_id