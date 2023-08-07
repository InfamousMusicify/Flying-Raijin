


tag @s add raij_arecall
tag @s add raij_tweak


tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger raijin set "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Raijin Auto Recall\nClick to edit delay time in seconds.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 60\nMax: 2000000000\nServer: ","color":"dark_gray"},{"score":{"name":"#auto_recall","objective":"raijin.config"},"color":"dark_gray"}]}},"",{"text":" Auto Recall ","color":"red"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"raijin_arecall"},"color":"gray"},{"text":")","color":"gray"}]
