


tag @s add raij_editlock
tag @s add raij_tweak


tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger raijin set "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Raijin Lockon\nClick to edit lockon time in seconds.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 60\nMax: 2000000000\nGlobal: ","color":"dark_gray"},{"score":{"name":"#raijin_lock","objective":"raijin.config"},"color":"dark_gray"}]}},"",{"text":" Raijin Lockon ","color":"red"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"raijin_editlock"},"color":"gray"},{"text":")","color":"gray"}]
