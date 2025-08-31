execute store result score .every_path_p4 RTC_paths run execute if entity @e[type=marker,tag=path4keyframe]
function rtc:keyframes/path/save/export/pos0/4
function rtc:keyframes/path/save/export/pos1/4
function rtc:keyframes/path/save/export/pos2/4
function rtc:keyframes/path/save/export/rot0/4
function rtc:keyframes/path/save/export/rot1/4
data modify storage rtc_path4:check check set value 1
data modify storage rtc_has_path:check check set value 1
data modify storage rtc_menu:event event set value '{"text":"◆ Path exported to: (world)/data/command_storage_rtc_path4.dat","color":"gray"}'
function rtc:keyframes/path/load/tellraw