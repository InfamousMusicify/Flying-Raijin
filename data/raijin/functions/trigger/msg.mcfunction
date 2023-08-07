


tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}

#tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #instant_recall raijin.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle instant auto recall.\nRecomendations: Keep this on if Lockon is 60+, \nit will save many tridents from being lost. \nTurn off if you dont like/want tridents constantly resummoning. \nWhen off Raijin Lockon will be the teleport time interval.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0=ON - 1=OFF","color":"dark_gray"}]}}," Instant Auto Recall ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#instant_recall","objective":"raijin.config"},"color":"gray"},{"text":")","color":"gray"}]

# toggle
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger raijin set 2000000001"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to start to toggle \nInstant Auto Recall On/Off.\nRecomendations: Keep this on if Lockon is 60+, \nit will save many tridents from being lost. \nTurn off if you dont like/want tridents constantly resummoning. \nWhen off Raijin Lockon will be the teleport time interval.","color":"gray"},{"text":"\n0 = ON - 1 = OFF\nAccepts: whole numbers 0+\nDefault: 0\nServer: ","color":"dark_gray"},{"score":{"name":"#instant_recall","objective":"raijin.config"},"color":"dark_gray"}]}}," Instant Auto Recall ",{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"raijin_irecall"},"color":"gray"},{"text":")","color":"gray"}]

# Fuses
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger raijin set 2000000002"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Raijin Auto Recall\nClick to start to edit trident lockon time in seconds. \nAuto Recall Timer & Instant Auto Recall 'Off' Interval\n(How long each will trident be locked onto, \nset 60 or below, unless immortal raijin is on \nor tridents may be lost to despawning.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 60\nMax: 2000000000\nServer: ","color":"dark_gray"},{"score":{"name":"#auto_recall","objective":"raijin.config"},"color":"dark_gray"}]}}," Auto Recall ",{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"raijin_arecall"},"color":"gray"},{"text":")","color":"gray"}]





tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}

