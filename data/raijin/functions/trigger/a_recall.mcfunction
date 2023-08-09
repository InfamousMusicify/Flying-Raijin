
tag @s add raij_arecall
tag @s add raij_tweak



tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger raijin set "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle \nAuto Recall On/Off.","color":"gray"},{"text":"\n0 = ON - 1 = OFF\nAccepts: whole numbers 0+\nDefault: 0\nGlobal: ","color":"dark_gray"},{"score":{"name":"#auto_recall","objective":"raijin.config"},"color":"dark_gray"}]}},"",{"text":" Auto Recall ","color":"green"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"raijin_arecall"},"color":"gray"},{"text":")","color":"gray"}]
