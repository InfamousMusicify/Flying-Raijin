#presets for raijin exp systems
# 0 = Custom EXP Sys
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"run_command","value":"/function raijin:preset/default"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable the Default preset!","color":"gray"},{"text":"\nGain custom exp by default, cooldowns, but wont run out of chakra.","color":"dark_gray"}]}}," Default ",{"text":"","color":"gray"}]
# 1 = Vanilla
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"run_command","value":"/function raijin:preset/vanilla"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable the Vanilla preset!","color":"gray"},{"text":"\nTakes EXP from Exp Bar when using raijin.","color":"dark_gray"}]}}," Vanilla ",{"text":"","color":"gray"}]
# 2 = Vanilla+
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"run_command","value":"/function raijin:preset/vanillaplus"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable the Vanilla+ preset!","color":"gray"},{"text":"\nGives EXP to Exp Bar when using raijin.","color":"dark_gray"}]}}," Vanilla+ ",{"text":"","color":"gray"}]
# OG
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"run_command","value":"/function raijin:preset/og"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable the OG preset!","color":"gray"},{"text":"\nNo EXP or Cooldown when using raijin.","color":"dark_gray"}]}}," OG ",{"text":"","color":"gray"}]
# No EXP





#tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"run_command","value":"/function raijin:preset/default"},"hoverEvent":{"action":"show_text","contents":"Gain custom exp by default, cooldowns, but wont run out of chakra."}},{"text":" Default"}]

#{"text":"\n(Custom EXP system or EXP Bar)","color":"dark_gray"},{"text":"\n0 = Vanilla EXP \n","color":"gray"},{"text":"(Takes exp from exp bar when using raijin, \ncooldown set by admin)","color":"yellow"},
#{"text":"\n1 = Custom System \n","color":"gray"},{"text":"(gain custom exp by default, cooldowns, but wont run out of chakra. Editing raijin.cdtracker will disable scaling cooldown times with this setting!)","color":"yellow"},
#{"text":"\n2 = Vanilla + \n","color":"gray"},{"text":"(Gives exp to bar when using raijin, cooldown set by admin)","color":"yellow"},{"text":"\nAccepts these numbers: 0, 1, 2\nDefault: 1","color":"dark_gray"}]}}," EXP System ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#config","objective":"raijin.xpt"},"color":"gray"},{"text":")","color":"gray"}]
