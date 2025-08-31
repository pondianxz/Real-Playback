execute store result score .every_path_p1 RTC_paths run execute if entity @e[type=marker,tag=path1keyframe]
function rtc:keyframes/path/save/export/pos0/1
function rtc:keyframes/path/save/export/pos1/1
function rtc:keyframes/path/save/export/pos2/1
function rtc:keyframes/path/save/export/rot0/1
function rtc:keyframes/path/save/export/rot1/1
data modify storage rtc_path1:check check set value 1
data modify storage rtc_has_path:check check set value 1
data modify storage rtc_menu:event event set value '{"text":"◆ Path exported to: (world)/data/command_storage_rtc_path1.dat","color":"gray"}'
function rtc:keyframes/path/load/tellraw