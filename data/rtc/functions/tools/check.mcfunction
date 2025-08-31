execute if score .keyframe_banner_check RTC_check matches 0 run function rtc:tools/keyframe/check
scoreboard players set .keyframe_banner_check RTC_check 0

execute if score .start_banner_check RTC_check matches 0 run function rtc:tools/start/check
scoreboard players set .start_banner_check RTC_check 0

execute if score .reset_banner_check RTC_check matches 0 run function rtc:tools/reset/check
scoreboard players set .reset_banner_check RTC_check 0

# Persistent Tools
execute unless score .f1_o1 RTC_menu matches 0 run function rtc:tools/menu/get
execute unless score .f1_o1 RTC_menu matches 0 if score .menu_comparator_check RTC_check matches 1 run function rtc:tools/menu/check
scoreboard players set .menu_comparator_check RTC_check 0

execute unless score .f1_o1 RTC_menu matches 0 run function rtc:tools/save/get
execute unless score .f1_o1 RTC_menu matches 0 if score .save_banner_check RTC_check matches 1 run function rtc:tools/save/check
scoreboard players set .save_banner_check RTC_check 0

execute unless score .f1_o1 RTC_menu matches 0 run function rtc:tools/load/get
execute unless score .f1_o1 RTC_menu matches 0 if score .load_banner_check RTC_check matches 1 run function rtc:tools/load/check
scoreboard players set .load_banner_check RTC_check 0

execute unless score .f1_o1 RTC_menu matches 0 run function rtc:tools/etarget/get
execute unless score .f1_o1 RTC_menu matches 0 if score .etarget_banner_check RTC_check matches 1 run function rtc:tools/etarget/check
scoreboard players set .etarget_banner_check RTC_check 0