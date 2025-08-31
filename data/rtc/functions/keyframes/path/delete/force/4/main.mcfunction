scoreboard players set .force_delete RTC_paths 1
data remove storage rtc_path4:check check
function rtc:keyframes/path/delete/force/4/pos0
function rtc:keyframes/path/delete/force/4/pos1
function rtc:keyframes/path/delete/force/4/pos2
function rtc:keyframes/path/delete/force/4/rot0
function rtc:keyframes/path/delete/force/4/rot1
function rtc:keyframes/path/delete/4
execute if score .all RTC_paths matches 0 run data remove storage rtc_has_path:check check
function rtc:keyframes/path/load/tellraw