kill @e[type=marker,tag=anchor]
scoreboard players set .every RTC_camera 0
kill @e[type=area_effect_cloud,nbt={Tags:["keyframes"]}]
kill @e[tag=estimate_time]
kill @e[tag=bezier.P0]
kill @e[tag=bezier.P1]
kill @e[tag=bezier.P2]
kill @e[tag=bezier.L0]
kill @e[tag=bezier.L1]
kill @e[tag=bezier.L2]
kill @e[tag=bezier.Q0]
kill @e[tag=bezier.Q1]
kill @e[tag=bezier.Q2]
kill @e[tag=bezier.C0]
kill @e[tag=rtc.etarget]
function rtc:keyframes/path/duration/timer/reset
scoreboard players set .ended_path RTC_camera 0
scoreboard players set .already_timed RTC_timer 0