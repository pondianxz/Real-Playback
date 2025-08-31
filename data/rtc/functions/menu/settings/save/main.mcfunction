scoreboard players add .all_ps RTC_settings 1
execute if score .all_ps RTC_settings matches 1 run scoreboard players set .preset1 RTC_settings 1
execute if score .all_ps RTC_settings matches 1 run function rtc:menu/settings/save/1
#########################################################################################################################################################################################################################
#########################################################################################################################################################################################################################
execute if score .all_ps RTC_settings matches 2 if score .preset1 RTC_settings matches 1 run scoreboard players set .preset2 RTC_settings 1
execute if score .all_ps RTC_settings matches 2 if score .preset1 RTC_settings matches 1 run function rtc:menu/settings/save/2

execute if score .all_ps RTC_settings matches 2 if score .preset1 RTC_settings matches 0 run function rtc:menu/settings/save/1
execute if score .all_ps RTC_settings matches 2 if score .preset1 RTC_settings matches 0 run scoreboard players set .preset1 RTC_settings 1
#########################################################################################################################################################################################################################
#########################################################################################################################################################################################################################
execute if score .all_ps RTC_settings matches 3 if score .preset1 RTC_settings matches 1 if score .preset2 RTC_settings matches 1 run scoreboard players set .preset3 RTC_settings 1
execute if score .all_ps RTC_settings matches 3 if score .preset1 RTC_settings matches 1 if score .preset2 RTC_settings matches 1 run function rtc:menu/settings/save/3

execute if score .all_ps RTC_settings matches 3 if score .preset1 RTC_settings matches 1 if score .preset2 RTC_settings matches 0 run function rtc:menu/settings/save/2
execute if score .all_ps RTC_settings matches 3 if score .preset1 RTC_settings matches 1 if score .preset2 RTC_settings matches 0 run scoreboard players set .preset2 RTC_settings 1

execute if score .all_ps RTC_settings matches 3 if score .preset1 RTC_settings matches 0 run function rtc:menu/settings/save/1
execute if score .all_ps RTC_settings matches 3 if score .preset1 RTC_settings matches 0 run scoreboard players set .preset1 RTC_settings 1
#########################################################################################################################################################################################################################
#########################################################################################################################################################################################################################
execute if score .all_ps RTC_settings matches 4 if score .preset1 RTC_settings matches 1 if score .preset2 RTC_settings matches 1 if score .preset3 RTC_settings matches 1 run scoreboard players set .preset4 RTC_settings 1
execute if score .all_ps RTC_settings matches 4 if score .preset1 RTC_settings matches 1 if score .preset2 RTC_settings matches 1 if score .preset3 RTC_settings matches 1 run function rtc:menu/settings/save/4

execute if score .all_ps RTC_settings matches 4 if score .preset1 RTC_settings matches 1 if score .preset2 RTC_settings matches 1 if score .preset3 RTC_settings matches 0 run function rtc:menu/settings/save/3
execute if score .all_ps RTC_settings matches 4 if score .preset1 RTC_settings matches 1 if score .preset2 RTC_settings matches 1 if score .preset3 RTC_settings matches 0 run scoreboard players set .preset3 RTC_settings 1

execute if score .all_ps RTC_settings matches 4 if score .preset1 RTC_settings matches 1 if score .preset2 RTC_settings matches 0 run function rtc:menu/settings/save/2
execute if score .all_ps RTC_settings matches 4 if score .preset1 RTC_settings matches 1 if score .preset2 RTC_settings matches 0 run scoreboard players set .preset2 RTC_settings 1

execute if score .all_ps RTC_settings matches 4 if score .preset1 RTC_settings matches 0 run function rtc:menu/settings/save/1
execute if score .all_ps RTC_settings matches 4 if score .preset1 RTC_settings matches 0 run scoreboard players set .preset1 RTC_settings 1
#########################################################################################################################################################################################################################
#########################################################################################################################################################################################################################
execute if score .all_ps RTC_settings matches 5 if score .preset1 RTC_settings matches 1 if score .preset2 RTC_settings matches 1 if score .preset3 RTC_settings matches 1 if score .preset4 RTC_settings matches 1 run scoreboard players set .preset5 RTC_settings 1
execute if score .all_ps RTC_settings matches 5 if score .preset1 RTC_settings matches 1 if score .preset2 RTC_settings matches 1 if score .preset3 RTC_settings matches 1 if score .preset4 RTC_settings matches 1 run function rtc:menu/settings/save/5

execute if score .all_ps RTC_settings matches 5 if score .preset1 RTC_settings matches 1 if score .preset2 RTC_settings matches 1 if score .preset3 RTC_settings matches 1 if score .preset4 RTC_settings matches 0 run function rtc:menu/settings/save/4
execute if score .all_ps RTC_settings matches 5 if score .preset1 RTC_settings matches 1 if score .preset2 RTC_settings matches 1 if score .preset3 RTC_settings matches 1 if score .preset4 RTC_settings matches 0 run scoreboard players set .preset4 RTC_settings 1

execute if score .all_ps RTC_settings matches 5 if score .preset1 RTC_settings matches 1 if score .preset2 RTC_settings matches 1 if score .preset3 RTC_settings matches 0 run function rtc:menu/settings/save/3
execute if score .all_ps RTC_settings matches 5 if score .preset1 RTC_settings matches 1 if score .preset2 RTC_settings matches 1 if score .preset3 RTC_settings matches 0 run scoreboard players set .preset3 RTC_settings 1

execute if score .all_ps RTC_settings matches 5 if score .preset1 RTC_settings matches 1 if score .preset2 RTC_settings matches 0 run function rtc:menu/settings/save/2
execute if score .all_ps RTC_settings matches 5 if score .preset1 RTC_settings matches 1 if score .preset2 RTC_settings matches 0 run scoreboard players set .preset2 RTC_settings 1

execute if score .all_ps RTC_settings matches 5 if score .preset1 RTC_settings matches 0 run function rtc:menu/settings/save/1
execute if score .all_ps RTC_settings matches 5 if score .preset1 RTC_settings matches 0 run scoreboard players set .preset1 RTC_settings 1
#########################################################################################################################################################################################################################
#########################################################################################################################################################################################################################
execute if score .all_ps RTC_settings matches 6 run data modify storage rtc_menu:event event set value '{"text":"● Can\'t create more than 5 Presets","color":"red"}'
function rtc:menu/main
execute if score .all_ps RTC_settings matches 6 run scoreboard players set .all_ps RTC_settings 5