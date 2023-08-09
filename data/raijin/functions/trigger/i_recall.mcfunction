

tag @s add raij_irecall
tag @s add raij_tweak



#tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger raijin set 2000000002"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Raijin Auto Recall\nClick to start to edit delay time in seconds.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 60\nMax: 2000000000\nGlobal: ","color":"dark_gray"},{"score":{"name":"#auto_recall","objective":"raijin.config"},"color":"dark_gray"}]}},"",{"text":" Auto Recall ","color":"green"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"raijin_arecall"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger raijin set "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle \nInstant Recall On/Off.","color":"gray"},{"text":"\n0 = ON - 1 = OFF\nAccepts: whole numbers 0+\nDefault: 0\nGlobal: ","color":"dark_gray"},{"score":{"name":"#auto_recall","objective":"raijin.config"},"color":"dark_gray"}]}},"",{"text":" Instant Recall ","color":"green"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"raijin_irecall"},"color":"gray"},{"text":")","color":"gray"}]
