# relock
execute as @e[type=minecraft:trident,predicate=raijin:raijin] run scoreboard players operation @s raijin_lock = #raijin_lock raijin.config
execute as @a run scoreboard players operation @s raijin_lock = #raijin_lock raijin.config
#execute as @a run scoreboard players operation @s raijin.cooldown = #cooldown raijin.config


