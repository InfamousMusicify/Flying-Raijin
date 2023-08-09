

# Debate: make 0 work, fire on -1 in tick?
# would have to rewrite this logic a bit and may have to add a score tweaker to new and logout

# main msg
execute as @s[scores={raijin=0},tag=!raij_tweak] run function raijin:trigger/msg

# kill fuse when entering fuse times
execute as @s[scores={raijin=0..},tag=raij_tweak] run scoreboard players set @s raijin_killfuse 0
# remove tag for reselect
execute as @s[scores={raijin=..-2},tag=raij_tweak] run function raijin:trigger/tag_remove
# reset to max when overset  -32 bit int limit -1
execute as @s[scores={raijin=2000000000..},tag=raij_tweak] run scoreboard players set @s raijin 60


# toggle
execute as @s[scores={raijin=-0..},tag=raij_irecall] run function raijin:trigger/i_recall_set
execute as @s[scores={raijin=-0..},tag=raij_arecall] run function raijin:trigger/a_recall_set
# fuse
execute as @s[scores={raijin=-0..},tag=raij_editlock] run function raijin:trigger/raijin_lock_set

# pick
# toggle
execute as @s[scores={raijin=-100}] run function raijin:trigger/a_recall
execute as @s[scores={raijin=-200}] run function raijin:trigger/i_recall

# fuse
execute as @s[scores={raijin=-1000}] run function raijin:trigger/raijin_lock


scoreboard players enable @s raijin
scoreboard players set @s raijin -1



