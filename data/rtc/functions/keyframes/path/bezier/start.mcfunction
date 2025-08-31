scoreboard players set @s RTC_bezier_math 1
scoreboard players set .t RTC_bezier_math 0
data merge storage rtc_bezier:math {P1:{Pos:[0.0d,0.0d,0.0d]},P2:{Pos:[0.0d,0.0d,0.0d]},L1:{Pos:[0.0d,0.0d,0.0d]},K2:{Pos:[0.0d,0.0d,0.0d]},L2:{Pos:[0.0d,0.0d,0.0d]},Q1:{Pos:[0.0d,0.0d,0.0d]}}
gamemode spectator @s
function rtc:keyframes/path/bezier/tick
execute unless score .already_timed RTC_timer matches 1 run function rtc:keyframes/path/duration/timer/reset
execute unless score .already_timed RTC_timer matches 1 run function rtc:keyframes/path/duration/timer/main