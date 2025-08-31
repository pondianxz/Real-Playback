execute if data storage rtc_path1:check check run function rtc:keyframes/path/load/import/1/main
execute if data storage rtc_path1:check check run scoreboard players set .path1 RTC_paths 1

execute if data storage rtc_path2:check check run function rtc:keyframes/path/load/import/2/main
execute if data storage rtc_path2:check check run scoreboard players set .path2 RTC_paths 1

execute if data storage rtc_path3:check check run function rtc:keyframes/path/load/import/3/main
execute if data storage rtc_path3:check check run scoreboard players set .path3 RTC_paths 1

execute if data storage rtc_path4:check check run function rtc:keyframes/path/load/import/4/main
execute if data storage rtc_path4:check check run scoreboard players set .path4 RTC_paths 1

execute if data storage rtc_path5:check check run function rtc:keyframes/path/load/import/5/main
execute if data storage rtc_path5:check check run scoreboard players set .path5 RTC_paths 1
scoreboard players operation .all RTC_paths += .path1 RTC_paths
scoreboard players operation .all RTC_paths += .path2 RTC_paths
scoreboard players operation .all RTC_paths += .path3 RTC_paths
scoreboard players operation .all RTC_paths += .path4 RTC_paths
scoreboard players operation .all RTC_paths += .path5 RTC_paths
data modify storage rtc_menu:event event set value '{"text":"◆ Imported All Paths","color":"gray"}'
function rtc:keyframes/path/load/tellraw