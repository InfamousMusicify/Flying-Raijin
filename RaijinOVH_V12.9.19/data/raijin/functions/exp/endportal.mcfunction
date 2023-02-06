say endportal test
# hardcoded exp (backup option.)
#scoreboard players add @s raijin.exp.points 5

# addpoints from config scoreboard
#scoreboard players set @s raijin.exp.endportal 1
scoreboard players operation @s raijin.exp.point += #config raijin.exp.endportal
scoreboard players set @s raijin.exp.endportal 0
#scoreboard players set @s raijin.endportal 0

advancement revoke @s only raijin:endportal