# raijin:lockon
# set player lockon score to 1 minute cooldown
scoreboard players set @s raijin_lock 61
# bug fix to activate trident score
scoreboard players add @e[type=trident,sort=nearest] raijin_id 0
# Set thrown trident score to player ID.  # Called by tick (at player who throws trident)
execute store result score @e[sort=nearest,scores={raijin_id=0},type=trident,limit=1,nbt={Trident: {id: "minecraft:trident", Count: 1b, tag: {Tags: ["Raijin"]}}}] raijin_id run scoreboard players get @s raijin_id
# Reset RajinThrow Score
scoreboard players set @s raijin_throw 0
