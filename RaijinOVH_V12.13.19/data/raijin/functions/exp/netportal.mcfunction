say netportal test
# hardcoded exp (backup option.)
#scoreboard players add @s raijin.exp.points 5

# addpoints from config scoreboard
scoreboard players set @s raijin.exp.netportal 1
scoreboard players operation @s raijin.exp.point += #config raijin.exp.netportal
scoreboard players set @s raijin.exp.netportal 0
scoreboard players set @s raijin.netportal 0

advancement revoke @s only raijin:netportal