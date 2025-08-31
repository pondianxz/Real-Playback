execute unless score .t RTC_bezier_math matches 1.. run scoreboard players set .t RTC_bezier_math 0
execute unless score .t RTC_bezier_math matches 100 run scoreboard players add .t RTC_bezier_math 1
execute if score .t RTC_bezier_math matches 100 run scoreboard players set .already_timed RTC_timer 1
execute as @a[gamemode=spectator,limit=1] if score .t RTC_bezier_math matches 100 run function rtc:keyframes/path/end

function rtc:keyframes/path/bezier/math/l0
function rtc:keyframes/path/bezier/math/l1
execute if score .f2.f1_o2 RTC_menu matches 0 run function rtc:keyframes/path/bezier/math/q0/0
execute if score .f2.f1_o2 RTC_menu matches 1 run function rtc:keyframes/path/bezier/math/q0/1

function rtc:keyframes/path/bezier/math/l2
execute if score .f2.f1_o2 RTC_menu matches 0 run function rtc:keyframes/path/bezier/math/q1/0
execute if score .f2.f1_o2 RTC_menu matches 1 run function rtc:keyframes/path/bezier/math/q1/1
execute if score .f2.f1_o2 RTC_menu matches 0 run function rtc:keyframes/path/bezier/math/c0/0
execute if score .f2.f1_o2 RTC_menu matches 1 run function rtc:keyframes/path/bezier/math/c0/1

execute unless score .t RTC_bezier_math matches 100 as @e[type=marker,tag=bezier.C0,limit=1] at @s run tp @a ~ ~ ~ facing entity @e[tag=rtc.etarget,limit=1] feet

# Ticking
execute unless score .t RTC_bezier_math matches 100 run schedule function rtc:keyframes/path/bezier/tick 1t