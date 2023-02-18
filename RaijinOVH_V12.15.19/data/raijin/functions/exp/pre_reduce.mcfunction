
#execute if score #config raijin.exp.lvl2 <= @s raijin.xp as @a[scores={raijin.exp.point=1..}] run function raijin:exp/reduce
execute if score #config raijin.exp.lvl2 <= @s raijin.xp if score #config raijin.exp.lvl2 matches ..-1 as @a[scores={raijin.exp.point=1..}] run function raijin:exp/reduce


#execute if score #config raijin.exp.lvl2 <= @s raijin.xp if score @s raijin.exp.point matches 1.. at @e[type=trident,scores={raijin_id=1..}] if score @e[type=trident,limit=1,distance=..0] raijin_id = @s[scores={raijin.cooldown=0}] raijin_id run function raijin:exp/reduce