execute store result score .every_path_p2 RTC_paths run execute if entity @e[type=marker,tag=path2keyframe]
function rtc:keyframes/path/save/export/pos0/2
function rtc:keyframes/path/save/export/pos1/2
function rtc:keyframes/path/save/export/pos2/2
function rtc:keyframes/path/save/export/rot0/2
function rtc:keyframes/path/save/export/rot1/2
data modify storage rtc_path2:check check set value 1
data modify storage rtc_has_path:check check set value 1
data modify storage rtc_menu:event event set value '{"text":"◆ Path exported to: (world)/data/command_storage_rtc_path2.dat","color":"gray"}'
function rtc:keyframes/path/load/tellraw