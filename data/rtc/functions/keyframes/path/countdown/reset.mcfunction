title @a[tag=rtc.countdown] reset
execute as @a[tag=rtc.countdown] if score .f2.f1_o1 RTC_menu matches 0 run function rtc:keyframes/path/start
execute as @a[tag=rtc.countdown] if score .f2.f1_o1 RTC_menu matches 1 run function rtc:keyframes/path/bezier/start
tag @a remove rtc.countdown