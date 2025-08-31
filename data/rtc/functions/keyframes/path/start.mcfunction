scoreboard players set @s RTC_camera 2
tp @s @e[tag=anchor,scores={RTC_camera=1},limit=1]
gamemode spectator @s
execute unless score .already_timed RTC_timer matches 1 run function rtc:keyframes/path/duration/timer/reset
execute unless score .already_timed RTC_timer matches 1 run function rtc:keyframes/path/duration/timer/main