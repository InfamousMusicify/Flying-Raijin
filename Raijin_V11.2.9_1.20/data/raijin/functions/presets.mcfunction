#presets
# tellraw
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["                     Combat Snapshot",{"text":" / ","color":"gray"},"Presets                         "]
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/function raijin:preset/1"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Default preset.","color":"gray"},{"text":"","color":"dark_gray"}]}}," 1 Default ",{"text":"","color":"gray"},{"score":{"name":"#","objective":""},"color":"gray"},{"text":"","color":"gray"}]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/function raijin:preset/2"},"hoverEvent":{"action":"show_text","contents":["",{"text":"InHaus Preset.\nused by author","color":"gray"},{"text":"","color":"dark_gray"}]}}," 2 InHaus ",{"text":"","color":"gray"},{"score":{"name":"#","objective":""},"color":"gray"},{"text":"","color":"gray"}]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/function raijin:preset/3"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Delayed Preset.","color":"gray"},{"text":"","color":"dark_gray"}]}}," 3 Delayed ",{"text":"","color":"gray"},{"score":{"name":"#","objective":""},"color":"gray"},{"text":"","color":"gray"}]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/function raijin:preset/4"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Delayed Preset with cooldown messages.","color":"gray"},{"text":"","color":"dark_gray"}]}}," 4 Delayed /w msgs ",{"text":"","color":"gray"},{"score":{"name":"#","objective":""},"color":"gray"},{"text":"","color":"gray"}]


tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/datapack disable "},"hoverEvent":{"action":"show_text","contents":["",{"text":"disable a datapack","color":"gray"},{"text":"","color":"dark_gray"}]}}," Disable ",{"text":"","color":"gray"},{"score":{"name":"#","objective":""},"color":"gray"},{"text":"","color":"gray"}]



tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}


execute store result score #sendCommandFeedback raijin_id run gamerule sendCommandFeedback
execute if score #sendCommandFeedback raijin_id matches 1 run function raijin:hide_command_feedback