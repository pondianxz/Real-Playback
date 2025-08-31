execute as @e[type=item,nbt={Item:{tag:{tag:{start_banner:1b}}}}] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item,nbt={Item:{tag:{tag:{start_banner:1b}}}}] run tp @s @p
execute if entity @e[type=item,limit=1,nbt={Item:{tag:{tag:{start_banner:1b}}}}] as @a if score .f2.f1_o1 RTC_menu matches 1 unless entity @e[tag=rtc.etarget] run function rtc:keyframes/path/ntarget
execute if entity @e[type=item,limit=1,nbt={Item:{tag:{tag:{start_banner:1b}}}}] as @a if score .f2.f1_o3 RTC_menu matches 1.. if score .f2.f1_o1 RTC_menu matches 0 if score .every RTC_camera matches 2.. run function rtc:keyframes/path/countdown/main
execute if entity @e[type=item,limit=1,nbt={Item:{tag:{tag:{start_banner:1b}}}}] as @a if score .f2.f1_o3 RTC_menu matches 1.. if entity @e[tag=rtc.etarget] run function rtc:keyframes/path/countdown/main
execute if entity @e[type=item,limit=1,nbt={Item:{tag:{tag:{start_banner:1b}}}}] as @a if score .f2.f1_o1 RTC_menu matches 0 unless entity @a[tag=rtc.countdown] run function rtc:keyframes/path/start
execute if entity @e[type=item,limit=1,nbt={Item:{tag:{tag:{start_banner:1b}}}}] as @a if score .f2.f1_o1 RTC_menu matches 1 unless entity @a[tag=rtc.countdown] if entity @e[tag=rtc.etarget] run function rtc:keyframes/path/bezier/start
execute as @e[type=item,nbt={Item:{tag:{tag:{start_banner:1b}}}}] run kill @s