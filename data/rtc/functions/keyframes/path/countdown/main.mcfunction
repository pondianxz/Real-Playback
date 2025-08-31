title @s times 0 20 0
tag @s add rtc.countdown
execute if score .f2.f1_o3 RTC_menu matches 1 run function rtc:keyframes/path/countdown/1
execute if score .f2.f1_o3 RTC_menu matches 1 run schedule function rtc:keyframes/path/countdown/reset 1s

execute if score .f2.f1_o3 RTC_menu matches 2 run function rtc:keyframes/path/countdown/2
execute if score .f2.f1_o3 RTC_menu matches 2 run schedule function rtc:keyframes/path/countdown/1 1s
execute if score .f2.f1_o3 RTC_menu matches 2 run schedule function rtc:keyframes/path/countdown/reset 2s

execute if score .f2.f1_o3 RTC_menu matches 3 run function rtc:keyframes/path/countdown/3
execute if score .f2.f1_o3 RTC_menu matches 3 run schedule function rtc:keyframes/path/countdown/2 1s
execute if score .f2.f1_o3 RTC_menu matches 3 run schedule function rtc:keyframes/path/countdown/1 2s
execute if score .f2.f1_o3 RTC_menu matches 3 run schedule function rtc:keyframes/path/countdown/reset 3s

execute if score .f2.f1_o3 RTC_menu matches 4 run function rtc:keyframes/path/countdown/4
execute if score .f2.f1_o3 RTC_menu matches 4 run schedule function rtc:keyframes/path/countdown/3 1s
execute if score .f2.f1_o3 RTC_menu matches 4 run schedule function rtc:keyframes/path/countdown/2 2s
execute if score .f2.f1_o3 RTC_menu matches 4 run schedule function rtc:keyframes/path/countdown/1 3s
execute if score .f2.f1_o3 RTC_menu matches 4 run schedule function rtc:keyframes/path/countdown/reset 4s

execute if score .f2.f1_o3 RTC_menu matches 5 run function rtc:keyframes/path/countdown/5
execute if score .f2.f1_o3 RTC_menu matches 5 run schedule function rtc:keyframes/path/countdown/4 1s
execute if score .f2.f1_o3 RTC_menu matches 5 run schedule function rtc:keyframes/path/countdown/3 2s
execute if score .f2.f1_o3 RTC_menu matches 5 run schedule function rtc:keyframes/path/countdown/2 3s
execute if score .f2.f1_o3 RTC_menu matches 5 run schedule function rtc:keyframes/path/countdown/1 4s
execute if score .f2.f1_o3 RTC_menu matches 5 run schedule function rtc:keyframes/path/countdown/reset 5s