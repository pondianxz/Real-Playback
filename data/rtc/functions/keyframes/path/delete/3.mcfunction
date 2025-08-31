kill @e[type=marker,tag=path3keyframe]
kill @e[type=marker,tag=path3_etarget]
execute if score .core RTC_check matches 1 unless score .force_delete RTC_paths matches 1 run data modify storage rtc_menu:event event set value '{"text":"◆ Deleted Path 3","color":"red"}]'
execute if score .core RTC_check matches 1 if score .force_delete RTC_paths matches 1 run data modify storage rtc_menu:event event set value '{"text":"◆ Force Deleted Path 3","color":"#e62422"}]'
execute if score .core RTC_check matches 1 run scoreboard players set .path3 RTC_paths 0
execute if score .core RTC_check matches 1 run scoreboard players remove .all RTC_paths 1
execute if score .core RTC_check matches 1 unless score .force_delete RTC_paths matches 1 run function rtc:keyframes/path/load/tellraw
scoreboard players set .force_delete RTC_paths 0