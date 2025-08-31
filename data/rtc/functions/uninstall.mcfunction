scoreboard objectives remove RTC_camera
scoreboard objectives remove RTC_check
scoreboard objectives remove RTC_keyframes
scoreboard objectives remove RTC_from_keyframe
scoreboard objectives remove RTC_paths
scoreboard objectives remove RTC_menu
scoreboard objectives remove RTC_settings
scoreboard objectives remove RTC_duration
scoreboard objectives remove RTC_timer
scoreboard objectives remove RTC_bezier_math
data remove storage rtc_menu:event event
data remove storage rtc_dfsettings:options check
data remove storage rtc_dfsettings:options f1o1
data remove storage rtc_dfsettings:options f2o1
data remove storage rtc_dfsettings:options f2o2
data remove storage rtc_dfsettings:options f2o3
data remove storage rtc_preset1:options check
data remove storage rtc_preset1:options f1o1
data remove storage rtc_preset1:options f2o1
data remove storage rtc_preset1:options f2o2
data remove storage rtc_preset1:options f2o3
data remove storage rtc_preset2:options check
data remove storage rtc_preset2:options f1o1
data remove storage rtc_preset2:options f2o1
data remove storage rtc_preset2:options f2o2
data remove storage rtc_preset2:options f2o3
data remove storage rtc_preset3:options check
data remove storage rtc_preset3:options f1o1
data remove storage rtc_preset3:options f2o1
data remove storage rtc_preset3:options f2o2
data remove storage rtc_preset3:options f2o3
data remove storage rtc_preset4:options check
data remove storage rtc_preset4:options f1o1
data remove storage rtc_preset4:options f2o1
data remove storage rtc_preset4:options f2o2
data remove storage rtc_preset4:options f2o3
data remove storage rtc_preset5:options check
data remove storage rtc_preset5:options f1o1
data remove storage rtc_preset5:options f2o1
data remove storage rtc_preset5:options f2o2
data remove storage rtc_preset5:options f2o3
data remove storage rtc_bezier:math P1
data remove storage rtc_bezier:math P2
data remove storage rtc_bezier:math L1
data remove storage rtc_bezier:math L2
data remove storage rtc_bezier:math K2
data remove storage rtc_bezier:math Q1
kill @e[tag=bezier.P1]
kill @e[tag=bezier.P2]
kill @e[tag=bezier.L0]
kill @e[tag=bezier.L1]
kill @e[tag=bezier.Q0]
kill @e[tag=bezier.L2]
kill @e[tag=bezier.Q1]
kill @e[tag=bezier.C0]
clear @a lime_banner{tag:{keyframe_banner:1b}}
kill @e[type=item,nbt={Item:{id:"minecraft:lime_banner",tag:{keyframe_banner:1b}}}]
clear @a red_banner{tag:{start_banner:1b}}
kill @e[type=item,nbt={Item:{id:"minecraft:red_banner",tag:{start_banner:1b}}}]
clear @a blue_banner{tag:{reset_banner:1b}}
kill @e[type=item,nbt={Item:{id:"minecraft:blue_banner",tag:{reset_banner:1b}}}]
clear @a comparator{tag:{menu_comparator:1b}}
kill @e[type=item,nbt={Item:{id:"minecraft:comparator",tag:{menu_comparator:1b}}}]
clear @a light_blue_banner{tag:{save_banner:1b}}
kill @e[type=item,nbt={Item:{id:"minecraft:light_blue_banner",tag:{save_banner:1b}}}]
clear @a yellow_banner{tag:{load_banner:1b}}
kill @e[type=item,nbt={Item:{id:"minecraft:yellow_banner",tag:{load_banner:1b}}}]
clear @a pink_banner{tag:{etarget_banner:1b}}
kill @e[type=item,nbt={Item:{id:"minecraft:pink_banner",tag:{etarget_banner:1b}}}]
kill @e[type=marker,tag=anchor]
kill @e[type=area_effect_cloud,tag=rtc.etarget]
function rtc:keyframes/path/delete/1
function rtc:keyframes/path/delete/2
function rtc:keyframes/path/delete/3
function rtc:keyframes/path/delete/4
function rtc:keyframes/path/delete/5
kill @e[type=area_effect_cloud,tag=keyframes]
forceload remove 350000 350000
tellraw @a {"text":"Real Time Camera Uninstalled","color":"red"}