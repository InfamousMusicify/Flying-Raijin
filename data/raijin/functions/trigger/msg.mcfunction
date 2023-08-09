


tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}


#tellraw @s ["",{"text":"","color":"dark_gray","strikethrough":true},{"text":" Global settings: ","hoverEvent":{"action":"show_text","contents":["",{"text":"just for more info","color":"gray"}]},"color":"gray"},{"text":"          ","color":"dark_gray","strikethrough":true}]

tellraw @s ["",{"text":"Cooldown ","hoverEvent":{"action":"show_text","contents":["",{"text":"Raijin cooldown in ticks.\nDefault: 0","color":"gray"}]},"color":"gray"},"",{"text":"(","color":"gray"},{"score":{"name":"#cooldown","objective":"raijin.config"},"color":"gray"},{"text":")","color":"gray"}]

tellraw @s ["",{"text":"Immortal Tridents ","hoverEvent":{"action":"show_text","contents":["",{"text":"0=OFF - 1=ON","color":"gray"}]},"color":"gray"},"",{"text":"(","color":"gray"},{"score":{"name":"#immortal_trident","objective":"raijin.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"Immortal Raijin ","hoverEvent":{"action":"show_text","contents":["",{"text":"0=OFF - 1=ON","color":"gray"}]},"color":"gray"},"",{"text":"(","color":"gray"},{"score":{"name":"#immortal_raijin","objective":"raijin.config"},"color":"gray"},{"text":")","color":"gray"}]

tellraw @s ["",{"text":"Save Tridents ","hoverEvent":{"action":"show_text","contents":["",{"text":"0=ON - 1=OFF","color":"gray"}]},"color":"gray"},"",{"text":"(","color":"gray"},{"score":{"name":"#save_trident","objective":"raijin.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"Save Raijin Tridents ","hoverEvent":{"action":"show_text","contents":["",{"text":"0=ON - 1=OFF","color":"gray"}]},"color":"gray"},"",{"text":"(","color":"gray"},{"score":{"name":"#save_raijin","objective":"raijin.config"},"color":"gray"},{"text":")","color":"gray"}]

#tellraw @s ["",{"text":"Auto Recall ","hoverEvent":{"action":"show_text","contents":["",{"text":"0=ON - 1=OFF","color":"gray"}]},"color":"gray"},"",{"text":"(","color":"gray"},{"score":{"name":"#auto_recall","objective":"raijin.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger raijin set -100"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle \nAuto Recall On/Off.","color":"gray"},{"text":"\n0 = ON - 1 = OFF\nAccepts: whole numbers 0+\nDefault: 0\nGlobal: ","color":"dark_gray"},{"score":{"name":"#auto_recall","objective":"raijin.config"},"color":"dark_gray"}]}}," Auto Recall ",{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"raijin_arecall"},"color":"gray"},{"text":")","color":"gray"}]

#tellraw @s ["",{"text":"          ","color":"dark_gray","strikethrough":true},{"text":"^ Global settings ^","color":"gray"},{"text":"          ","color":"dark_gray","strikethrough":true}]

# toggle
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger raijin set -200"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to start to toggle \nInstant Auto Recall On/Off.\nRecomendations: Keep this on if Lockon is 60+, \nit will save many tridents from being lost. \nTurn off if you dont like/want tridents constantly resummoning. \nWhen off Raijin Lockon will be the teleport time interval.","color":"gray"},{"text":"\n0 = ON - 1 = OFF\nAccepts: whole numbers 0+\nDefault: 0\nGlobal: ","color":"dark_gray"},{"score":{"name":"#instant_recall","objective":"raijin.config"},"color":"dark_gray"}]}}," Instant Auto Recall ",{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"raijin_irecall"},"color":"gray"},{"text":")","color":"gray"}]

# Fuses
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger raijin set -1000"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Raijin Lockon\nClick to start to edit lockon time in seconds. \nAuto Recall Timer & Instant Auto Recall 'Off' Interval\n(How long each will trident be locked onto, \nset 60 or below, unless immortal raijin is on \nor tridents may be lost to despawning.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 60\nMax: 2000000000\nGlobal: ","color":"dark_gray"},{"score":{"name":"#raijin_lock","objective":"raijin.config"},"color":"dark_gray"}]}}," Raijin Lockon ",{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"raijin_editlock"},"color":"gray"},{"text":")","color":"gray"}]



#tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #immortal_trident raijin.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle trident immortality. (all tridents)\nWill override Immortal Raijin if on.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0=OFF - 1=ON","color":"dark_gray"}]}}," Immortal Tridents ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#immortal_trident","objective":"raijin.config"},"color":"gray"},{"text":")","color":"gray"}]
#tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #immortal_raijin raijin.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle raijin trident immortality.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0=OFF - 1=ON","color":"dark_gray"}]}}," Immortal Raijin ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#immortal_raijin","objective":"raijin.config"},"color":"gray"},{"text":")","color":"gray"}]


tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}

