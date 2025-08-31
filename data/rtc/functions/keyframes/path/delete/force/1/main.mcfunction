scoreboard players set .force_delete RTC_paths 1
data remove storage rtc_path1:check check
function rtc:keyframes/path/delete/force/1/pos0
function rtc:keyframes/path/delete/force/1/pos1
function rtc:keyframes/path/delete/force/1/pos2
function rtc:keyframes/path/delete/force/1/rot0
function rtc:keyframes/path/delete/force/1/rot1
function rtc:keyframes/path/delete/1
execute if score .all RTC_paths matches 0 run data remove storage rtc_has_path:check check
function rtc:keyframes/path/load/tellraw