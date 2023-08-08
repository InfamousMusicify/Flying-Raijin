


# Kill old bugged ones
scoreboard players add @s raijin_killfuse 1
# hard coded
execute as @s[scores={raijin_killfuse=60..}] run function raijin:trigger/fuse_kill



# testing
#execute as @s[scores={therm_killfuse=5..}] run function thermodynamic:fuse_kill
#scoreboard players set @s[scores={therm_killfuse=5..}] therm_killfuse 0
#say killed fuse