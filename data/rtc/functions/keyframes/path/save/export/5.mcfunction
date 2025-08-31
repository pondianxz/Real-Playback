execute store result score .every_path_p5 RTC_paths run execute if entity @e[type=marker,tag=path5keyframe]
function rtc:keyframes/path/save/export/pos0/5
function rtc:keyframes/path/save/export/pos1/5
function rtc:keyframes/path/save/export/pos2/5
function rtc:keyframes/path/save/export/rot0/5
function rtc:keyframes/path/save/export/rot1/5
data modify storage rtc_path5:check check set value 1
data modify storage rtc_has_path:check check set value 1
data modify storage rtc_menu:event event set value '{"text":"◆ Path exported to: (world)/data/command_storage_rtc_path5.dat","color":"gray"}'
function rtc:keyframes/path/load/tellraw