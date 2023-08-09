#uninstall_m
# mini uninstall for patches and keeping settings intact thru updates.
#
# scoreboard objectives remove raijin.config
scoreboard objectives remove raijin_chakra
scoreboard objectives remove raijin_use
scoreboard objectives remove raijin_crouch
scoreboard objectives remove raijin_throw
scoreboard objectives remove raijin_lock
scoreboard objectives remove raijin_logout
scoreboard objectives remove raijin
scoreboard objectives remove raijin_id
scoreboard objectives remove raijin.cooldown
scoreboard objectives remove raijin_irecall
scoreboard objectives remove raijin_arecall
scoreboard objectives remove raijin_editlock
scoreboard objectives remove raijin_killfuse

execute as @a run function raijin:trigger/tag_remove

schedule clear raijin:tick
schedule clear raijin:tick_1s




#advancement revoke @a only raijin:new_player