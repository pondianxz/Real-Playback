scoreboard players add .tick RTC_timer 1

execute if score .tick RTC_timer matches 20.. run scoreboard players add .sec RTC_timer 1
execute if score .tick RTC_timer matches 20.. run scoreboard players operation .tick RTC_timer -= .tick RTC_timer
execute if score .sec RTC_timer matches 60 run scoreboard players add .min RTC_timer 1
execute if score .sec RTC_timer matches 60 run scoreboard players operation .sec RTC_timer -= .sec RTC_timer

# Ticking
schedule function rtc:keyframes/path/duration/timer/main 1t