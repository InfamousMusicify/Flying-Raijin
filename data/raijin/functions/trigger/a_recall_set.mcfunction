scoreboard players operation @s raijin_arecall = @s raijin


#tag @s[scores={raijin_arecall=1}] add raijin_ir_off
#tag @s[scores={raijin_arecall=0}] remove raijin_ir_off

tag @s remove raij_arecall
tag @s remove raij_tweak

#tellraw @s ["","Auto Recall ",{"text":"Set: ","color":"red"},{"score":{"name":"@s","objective":"raijin_arecall"},"color":"red"}]


tellraw @s[scores={raijin_arecall=0}] ["",{"text":"Auto Recall: ","color":"gold"},{"text":"On","color":"dark_green"}]
tellraw @s[scores={raijin_arecall=1..}] ["",{"text":"Auto Recall: ","color":"gold"},{"text":"Off","color":"dark_red"}]
