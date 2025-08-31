scoreboard players set .force_delete RTC_paths 1
data remove storage rtc_path3:check check
function rtc:keyframes/path/delete/force/3/pos0
function rtc:keyframes/path/delete/force/3/pos1
function rtc:keyframes/path/delete/force/3/pos2
function rtc:keyframes/path/delete/force/3/rot0
function rtc:keyframes/path/delete/force/3/rot1
function rtc:keyframes/path/delete/3
execute if score .all RTC_paths matches 0 run data remove storage rtc_has_path:check check
function rtc:keyframes/path/load/tellraw