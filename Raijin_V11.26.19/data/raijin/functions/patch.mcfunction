# raijin:patch
# update patch to fix scoreboards after changes
execute if score #patch raijin_id matches ..39 run scoreboard players set #patch raijin_id 41
#  (Patch-# = ^)                             ^                                              ^
#update both patch numbers when patching
function raijin:uninstall
#
