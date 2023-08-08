

scoreboard players operation @s raijin_arecall = @s raijin


#execute as @a[scores={raijin=1..}]
#tag @s[scores={therm.config=1}] add raijin_off
#tag @s[scores={therm.config=0}] remove raijin_off

tag @s remove raij_arecall
tag @s remove raij_tweak

tellraw @s ["","Raijin Lockon ",{"text":"Set: ","color":"red"},{"score":{"name":"@s","objective":"raijin_arecall"},"color":"red"}]

#tellraw @s[tag=raijin_off] ["",{"text":"raijin reactions: ","color":"gold"},{"text":"Off","color":"dark_red"}]
#tellraw @s[tag=!raijin_off] ["",{"text":"raijin reactions: ","color":"gold"},{"text":"On","color":"dark_green"}]
