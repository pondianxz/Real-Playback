data merge entity @e[tag=keyframes,limit=1,nbt={CustomNameVisible:1b}] {CustomNameVisible:0b}
# Ticking
execute if score .keyframes_invisible RTC_keyframes matches 1 run schedule function rtc:keyframes/invisible/tick 1t