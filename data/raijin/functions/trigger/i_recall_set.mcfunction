scoreboard players operation @s raijin_irecall = @s raijin


#tag @s[scores={raijin_irecall=1}] add raijin_ir_off
#tag @s[scores={raijin_irecall=0}] remove raijin_ir_off

tag @s remove raij_irecall
tag @s remove raij_tweak

#tellraw @s ["","Auto Recall ",{"text":"Set: ","color":"red"},{"score":{"name":"@s","objective":"raijin_irecall"},"color":"red"}]


tellraw @s[scores={raijin_irecall=0}] ["",{"text":"Instant Recall: ","color":"gold"},{"text":"On","color":"dark_green"}]
tellraw @s[scores={raijin_irecall=1..}] ["",{"text":"Instant Recall: ","color":"gold"},{"text":"Off","color":"dark_red"}]
