# Creates all Raijin Reqs
# crafting
scoreboard objectives add chakra minecraft.used:minecraft.pig_spawn_egg
# flying raijin level 2 (teleport to trident)
scoreboard objectives add raijin minecraft.used:minecraft.carrot_on_a_stick
# flying raijin level 1 (Summon Trident)
#scoreboard objectives add raijin_recall minecraft.used:minecraft.carrot_on_a_stick
# trident throw utility tracker (Raijin Lock timer trigger, when thrown)
scoreboard objectives add raijin_throw minecraft.used:minecraft.trident
# Player IDs (Patch tracker #patch)-(for tag along function? maybe deprecated must check.)
scoreboard objectives add raijin_id dummy
# Trident in world filter (tracks 70 seconds, used to sync lockon for each player)
scoreboard objectives add raijin_lock dummy
# Patch Tracker
# scoreboard objectives add raijin_uid dummy "patch tracker"

scoreboard objectives add raijin_crouch minecraft.custom:minecraft.sneak_time

# scoreboard objectives add raijin_tag_along dummy