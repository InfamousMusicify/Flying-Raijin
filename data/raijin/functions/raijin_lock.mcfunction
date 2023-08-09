# raijin:fr/lockon
#say lockon
# set player lockon score to server config
#scoreboard players operation @s raijin_lock = #raijin_lock raijin.config
scoreboard players operation @s raijin_lock = @s raijin_editlock
# tracker for non raijin tridents  -old bug fix to activate trident score
scoreboard players add @e[type=trident] raijin_id 0
# Set thrown trident score to player ID.  # Called by tick (at player who throws trident)
#og# execute store result score @e[sort=nearest,scores={raijin_id=0},type=trident,limit=1,nbt={Trident: {id: "minecraft:trident", Count: 1b, tag: {Tags: ["Raijin"]}}}] raijin_id run scoreboard players get @s raijin_id
execute at @s store result score @e[limit=1,sort=nearest,type=minecraft:trident,predicate=raijin:raijin,scores={raijin_id=0}] raijin_id run scoreboard players get @s raijin_id

# set lockon on tridents 
scoreboard players add @e[type=trident,predicate=raijin:raijin] raijin_lock 0
#OG admin set# execute as @e[sort=nearest,type=trident,scores={raijin_id=1..,raijin_lock=0}] run scoreboard players operation @s raijin_lock = #raijin_lock raijin.config
#execute as @e[limit=1,sort=nearest,type=trident,scores={raijin_id=1..,raijin_lock=0}] if score @s raijin_id = @p[sort=nearest] raijin_id run scoreboard players operation @s raijin_lock = @p[sort=nearest] raijin_editlock
#execute as @e[limit=1,sort=nearest,type=trident,scores={raijin_id=1..,raijin_lock=0}] if score @s raijin_id = @p[sort=nearest] raijin_id run scoreboard players operation @s raijin_irecall = @p[sort=nearest] raijin_irecall

execute at @s as @e[limit=1,sort=nearest,type=trident,scores={raijin_id=1..,raijin_lock=0}] run scoreboard players operation @s raijin_lock = @p[sort=nearest] raijin_editlock
# instant recall setting stored on trident because minecraft is fucky and doesnt like to cooperate
#execute at @s as @e[limit=1,sort=nearest,type=trident,scores={raijin_id=1..,raijin_lock=0}] run scoreboard players operation @s raijin_irecall = @p[sort=nearest] raijin_irecall


# Reset RajinThrow Score
scoreboard players set @s raijin_throw 0
##### ##### ##### ##### ##### ##### ##### ##### ##### 








############################# prev bottom
# test for raijin tag along        ---Tag Along has been cut because crouching happens to often.
# execute store result score @e[sort=nearest,distance=..12] raijin_tag_along run scoreboard players get @s raijin_id
#############################



############################# other stuff
#execute as @e[sort=nearest,type=trident,scores={raijin_id=1..,raijin_lock=0}] if score @s raijin_id = @p[sort=nearest] raijin_id run scoreboard players operation @s raijin_lock = @p[sort=nearest] raijin_editlock
#execute at @e[limit=1,type=trident,tag=raijin] at @e[limit=1,type=trident,distance=..0] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:fr/raijin


############################# prev between ID and Recall
# tag trident for order of teleport -pre predicate redundancy -also easier to type than the predicate.
##### execute at @e[sort=nearest,type=trident,scores={raijin_id=1..}] run tag @e[type=trident,limit=1,distance=..0] add raijin_tp


# new test line for code golfed multiplayer tagger fix
#tag @e[type=trident,limit=1,sort=nearest,scores={raijin_id=1..}] add raijin
#execute as @e[limit=1,type=trident,sort=nearest,distance=..0,scores={raijin_id=1..}] run tag @s add raijin
#############################

