# save_raijin
#say save raijin
#tp @e[limit=1,distance=..0,type=trident,scores={raijin_id=1..},tag=rtp] @s

data merge entity @s {Motion:[0.0,0.0,0.0]}
execute at @a if score @s raijin_id = @p raijin_id run tp @s ~ ~ ~
