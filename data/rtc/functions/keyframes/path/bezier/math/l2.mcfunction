execute at @e[tag=bezier.P2] unless entity @e[tag=bezier.L2] run summon marker ~ ~ ~ {Tags:["bezier.L2"]}

execute store result storage rtc_bezier:math K2.Pos[0] double 1 run data get entity @e[type=area_effect_cloud,nbt={CustomName:'{"color":"green","text":"Keyframe 2"}'},limit=1] Pos[0]
execute store result storage rtc_bezier:math K2.Pos[1] double 1 run data get entity @e[type=area_effect_cloud,nbt={CustomName:'{"color":"green","text":"Keyframe 2"}'},limit=1] Pos[1]
execute store result storage rtc_bezier:math K2.Pos[2] double 1 run data get entity @e[type=area_effect_cloud,nbt={CustomName:'{"color":"green","text":"Keyframe 2"}'},limit=1] Pos[2]
#
#
#
execute store result score .K2x RTC_bezier_math run data get storage rtc_bezier:math K2.Pos[0]
execute store result score .K2y RTC_bezier_math run data get storage rtc_bezier:math K2.Pos[1]
execute store result score .K2z RTC_bezier_math run data get storage rtc_bezier:math K2.Pos[2]

#L2 = (1 - t)P2 + t*K2
scoreboard players set .100x_L2 RTC_bezier_math 100

scoreboard players operation .100x_L2 RTC_bezier_math -= .t RTC_bezier_math
scoreboard players operation .100x_L2 RTC_bezier_math *= .P2x RTC_bezier_math
scoreboard players operation .K2x_calc RTC_bezier_math = .K2x RTC_bezier_math
scoreboard players operation .K2x_calc RTC_bezier_math *= .t RTC_bezier_math
scoreboard players operation .100x_L2 RTC_bezier_math += .K2x_calc RTC_bezier_math
scoreboard players operation .L2_x RTC_bezier_math = .100x_L2 RTC_bezier_math

scoreboard players set .100y_L2 RTC_bezier_math 100

scoreboard players operation .100y_L2 RTC_bezier_math -= .t RTC_bezier_math
scoreboard players operation .100y_L2 RTC_bezier_math *= .P2y RTC_bezier_math
scoreboard players operation .K2y_calc RTC_bezier_math = .K2y RTC_bezier_math
scoreboard players operation .K2y_calc RTC_bezier_math *= .t RTC_bezier_math
scoreboard players operation .100y_L2 RTC_bezier_math += .K2y_calc RTC_bezier_math
scoreboard players operation .L2_y RTC_bezier_math = .100y_L2 RTC_bezier_math

scoreboard players set .100z_L2 RTC_bezier_math 100

scoreboard players operation .100z_L2 RTC_bezier_math -= .t RTC_bezier_math
scoreboard players operation .100z_L2 RTC_bezier_math *= .P2z RTC_bezier_math
scoreboard players operation .K2z_calc RTC_bezier_math = .K2z RTC_bezier_math
scoreboard players operation .K2z_calc RTC_bezier_math *= .t RTC_bezier_math
scoreboard players operation .100z_L2 RTC_bezier_math += .K2z_calc RTC_bezier_math
scoreboard players operation .L2_z RTC_bezier_math = .100z_L2 RTC_bezier_math
execute store result entity @e[type=marker,tag=bezier.L2,limit=1] Pos[0] double .01 run scoreboard players get .L2_x RTC_bezier_math
execute store result entity @e[type=marker,tag=bezier.L2,limit=1] Pos[1] double .01 run scoreboard players get .L2_y RTC_bezier_math
execute store result entity @e[type=marker,tag=bezier.L2,limit=1] Pos[2] double .01 run scoreboard players get .L2_z RTC_bezier_math