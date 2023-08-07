# raijin:uninstall
scoreboard objectives remove raijin.config
scoreboard objectives remove raijin_chakra
scoreboard objectives remove raijin
scoreboard objectives remove raijin_use
scoreboard objectives remove raijin_id
scoreboard objectives remove raijin_crouch
scoreboard objectives remove raijin_throw
scoreboard objectives remove raijin_lock
scoreboard objectives remove raijin_logout
scoreboard objectives remove raijin.cooldown

scoreboard objectives remove raijin_irecall
scoreboard objectives remove raijin_arecall
scoreboard objectives remove raijin_killfuse

schedule clear raijin:tick
schedule clear raijin:tick_1s


tag @a remove raij_tweak
tag @a remove raij_irecall
tag @a remove raij_arecall

#advancement revoke @a only raijin:new_player




