data merge entity @e[tag=keyframes,limit=1,nbt=!{CustomNameVisible:1b}] {CustomNameVisible:1b}
# Ticking
execute if score .keyframes_visible RTC_keyframes matches 1 run schedule function rtc:keyframes/visible/tick 1t