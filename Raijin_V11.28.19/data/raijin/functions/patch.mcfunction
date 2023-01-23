# raijin:patch
# update patch to fix scoreboards after changes
execute if score #patch raijin_id matches ..49 run scoreboard players set #patch raijin_id 51
#  (Patch-# = ^)                             ^                                              ^
#update both patch numbers when patching
function raijin:uninstall
#
