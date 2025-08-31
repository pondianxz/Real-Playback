execute at @e[type=marker,tag=bezier.P1] unless entity @e[tag=bezier.L1] run summon marker ~ ~ ~ {Tags:["bezier.L1"]}

execute store result storage rtc_bezier:math P2.Pos[0] double 1 run data get entity @e[tag=bezier.P2,limit=1] Pos[0]
execute store result storage rtc_bezier:math P2.Pos[1] double 1 run data get entity @e[tag=bezier.P2,limit=1] Pos[1]
execute store result storage rtc_bezier:math P2.Pos[2] double 1 run data get entity @e[tag=bezier.P2,limit=1] Pos[2]
#
#
#
execute store result score .P2x RTC_bezier_math run data get storage rtc_bezier:math P2.Pos[0]
execute store result score .P2y RTC_bezier_math run data get storage rtc_bezier:math P2.Pos[1]
execute store result score .P2z RTC_bezier_math run data get storage rtc_bezier:math P2.Pos[2]

#L1 = (1 - t)P1 + t*P2
scoreboard players set .100x_L1 RTC_bezier_math 100

scoreboard players operation .100x_L1 RTC_bezier_math -= .t RTC_bezier_math
scoreboard players operation .100x_L1 RTC_bezier_math *= .P1x RTC_bezier_math
scoreboard players operation .P2x_calc RTC_bezier_math = .P2x RTC_bezier_math
scoreboard players operation .P2x_calc RTC_bezier_math *= .t RTC_bezier_math
scoreboard players operation .100x_L1 RTC_bezier_math += .P2x_calc RTC_bezier_math

scoreboard players set .100y_L1 RTC_bezier_math 100

scoreboard players operation .100y_L1 RTC_bezier_math -= .t RTC_bezier_math
scoreboard players operation .100y_L1 RTC_bezier_math *= .P1y RTC_bezier_math
scoreboard players operation .P2y_calc RTC_bezier_math = .P2y RTC_bezier_math
scoreboard players operation .P2y_calc RTC_bezier_math *= .t RTC_bezier_math
scoreboard players operation .100y_L1 RTC_bezier_math += .P2y_calc RTC_bezier_math

scoreboard players set .100z_L1 RTC_bezier_math 100

scoreboard players operation .100z_L1 RTC_bezier_math -= .t RTC_bezier_math
scoreboard players operation .100z_L1 RTC_bezier_math *= .P1z RTC_bezier_math
scoreboard players operation .P2z_calc RTC_bezier_math = .P2z RTC_bezier_math
scoreboard players operation .P2z_calc RTC_bezier_math *= .t RTC_bezier_math
scoreboard players operation .100z_L1 RTC_bezier_math += .P2z_calc RTC_bezier_math
execute store result entity @e[type=marker,tag=bezier.L1,limit=1] Pos[0] double .01 run scoreboard players get .100x_L1 RTC_bezier_math
execute store result entity @e[type=marker,tag=bezier.L1,limit=1] Pos[1] double .01 run scoreboard players get .100y_L1 RTC_bezier_math
execute store result entity @e[type=marker,tag=bezier.L1,limit=1] Pos[2] double .01 run scoreboard players get .100z_L1 RTC_bezier_math