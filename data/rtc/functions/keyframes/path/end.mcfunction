execute unless score @s RTC_bezier_math matches 1 run scoreboard players set @s RTC_camera -1
function rtc:keyframes/path/bezier/stop
execute if score @s RTC_bezier_math matches 1 run scoreboard players set @s RTC_bezier_math 0
gamemode creative @s
schedule clear rtc:keyframes/invisible/tick
execute unless score .f2_o3 RTC_menu matches 1 run function rtc:keyframes/visible/start
function rtc:tools/start/get

# Duration
data merge entity @e[tag=estimate_time,limit=1] {CustomNameVisible:1b}
function rtc:keyframes/path/duration/timer/stop
execute if score .already_timed RTC_timer matches 0 run function rtc:keyframes/path/duration/timer/reset
execute if score .f2.f1_o2 RTC_menu matches 0 unless score .end_check RTC_camera matches -90..-85 unless score .end_check_bz RTC_camera matches -90..-85 if score .already_timed RTC_timer matches 1 run scoreboard players set .ended_path RTC_camera 1
execute if score .f2.f1_o2 RTC_menu matches 0 unless score .end_check RTC_camera matches -90..-85 unless score .end_check_bz RTC_camera matches -90..-85 if score .already_timed RTC_timer matches 1 run scoreboard players operation .seconds RTC_duration = .sec RTC_timer
execute if score .f2.f1_o2 RTC_menu matches 0 unless score .end_check RTC_camera matches -90..-85 unless score .end_check_bz RTC_camera matches -90..-85 if score .already_timed RTC_timer matches 1 run scoreboard players operation .minutes RTC_duration = .min RTC_timer

execute if score .f2.f1_o2 RTC_menu matches 1 unless score .end_check RTC_camera matches 85..90 unless score .end_check_bz RTC_camera matches -90..-85 if score .already_timed RTC_timer matches 1 run scoreboard players set .ended_path RTC_camera 1
execute if score .f2.f1_o2 RTC_menu matches 1 unless score .end_check RTC_camera matches 85..90 unless score .end_check_bz RTC_camera matches -90..-85 if score .already_timed RTC_timer matches 1 run scoreboard players operation .seconds RTC_duration = .sec RTC_timer
execute if score .f2.f1_o2 RTC_menu matches 1 unless score .end_check RTC_camera matches 85..90 unless score .end_check_bz RTC_camera matches -90..-85 if score .already_timed RTC_timer matches 1 run scoreboard players operation .minutes RTC_duration = .min RTC_timer

