execute store result score .every_path_p3 RTC_paths run execute if entity @e[type=marker,tag=path3keyframe]
function rtc:keyframes/path/save/export/pos0/3
function rtc:keyframes/path/save/export/pos1/3
function rtc:keyframes/path/save/export/pos2/3
function rtc:keyframes/path/save/export/rot0/3
function rtc:keyframes/path/save/export/rot1/3
data modify storage rtc_path3:check check set value 1
data modify storage rtc_has_path:check check set value 1
data modify storage rtc_menu:event event set value '{"text":"◆ Path exported to: (world)/data/command_storage_rtc_path3.dat","color":"gray"}'
function rtc:keyframes/path/load/tellraw