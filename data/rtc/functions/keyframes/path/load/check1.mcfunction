execute if score .every RTC_camera matches 1.. run data modify storage rtc_menu:event event set value '{"text":"◆ Could not load path, there might be existing keyframes.","color":"red"}'
execute if score .every RTC_camera matches 1.. run function rtc:keyframes/path/load/tellraw
execute unless score .every RTC_camera matches 1.. run function rtc:keyframes/path/load/1