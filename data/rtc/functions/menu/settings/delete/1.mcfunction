scoreboard players set .preset1 RTC_settings 0
scoreboard players remove .all_ps RTC_settings 1
scoreboard players reset PS1.f1_o1 RTC_settings
scoreboard players reset PS1.f2_o1 RTC_settings
scoreboard players reset PS1.f2_o2 RTC_settings
scoreboard players reset PS1.f2_o3 RTC_settings
scoreboard players reset PS1.f2.f1_o1 RTC_settings
scoreboard players reset PS1.f2.f1_o2 RTC_settings
scoreboard players reset PS1.f2.f1_o3 RTC_settings
data modify storage rtc_menu:event event set value '{"text":"● Deleted Preset 1","color":"red"}'
function rtc:menu/main