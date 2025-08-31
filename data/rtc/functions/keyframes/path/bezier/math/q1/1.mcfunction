execute at @e[tag=bezier.L1] unless entity @e[tag=bezier.Q1] run summon marker ~ ~ ~ {Tags:["bezier.Q1"]}

execute store result storage rtc_bezier:math L2.Pos[0] double .001 run data get entity @e[tag=bezier.L2,limit=1] Pos[0] 1000
execute store result storage rtc_bezier:math L2.Pos[1] double .001 run data get entity @e[tag=bezier.L2,limit=1] Pos[1] 1000
execute store result storage rtc_bezier:math L2.Pos[2] double .001 run data get entity @e[tag=bezier.L2,limit=1] Pos[2] 1000
#
#
#
execute store result score .L2x RTC_bezier_math run data get storage rtc_bezier:math L2.Pos[0] 1000
execute store result score .L2y RTC_bezier_math run data get storage rtc_bezier:math L2.Pos[1] 1000
execute store result score .L2z RTC_bezier_math run data get storage rtc_bezier:math L2.Pos[2] 1000

#Q1 = (1 - t)L1 + t*L2
scoreboard players set .100x_Q1 RTC_bezier_math 100

scoreboard players operation .100x_Q1 RTC_bezier_math -= .t RTC_bezier_math
scoreboard players operation .100x_Q1 RTC_bezier_math *= .L1x RTC_bezier_math
scoreboard players operation .L2x_calc RTC_bezier_math = .L2x RTC_bezier_math
scoreboard players operation .L2x_calc RTC_bezier_math *= .t RTC_bezier_math
scoreboard players operation .100x_Q1 RTC_bezier_math += .L2x_calc RTC_bezier_math
scoreboard players operation .Q1_x RTC_bezier_math = .100x_Q1 RTC_bezier_math

scoreboard players set .100y_Q1 RTC_bezier_math 100

scoreboard players operation .100y_Q1 RTC_bezier_math -= .t RTC_bezier_math
scoreboard players operation .100y_Q1 RTC_bezier_math *= .L1y RTC_bezier_math
scoreboard players operation .L2y_calc RTC_bezier_math = .L2y RTC_bezier_math
scoreboard players operation .L2y_calc RTC_bezier_math *= .t RTC_bezier_math
scoreboard players operation .100y_Q1 RTC_bezier_math += .L2y_calc RTC_bezier_math
scoreboard players operation .Q1_y RTC_bezier_math = .100y_Q1 RTC_bezier_math

scoreboard players set .100z_Q1 RTC_bezier_math 100

scoreboard players operation .100z_Q1 RTC_bezier_math -= .t RTC_bezier_math
scoreboard players operation .100z_Q1 RTC_bezier_math *= .L1z RTC_bezier_math
scoreboard players operation .L2z_calc RTC_bezier_math = .L2z RTC_bezier_math
scoreboard players operation .L2z_calc RTC_bezier_math *= .t RTC_bezier_math
scoreboard players operation .100z_Q1 RTC_bezier_math += .L2z_calc RTC_bezier_math
scoreboard players operation .Q1_z RTC_bezier_math = .100z_Q1 RTC_bezier_math
execute store result entity @e[type=marker,tag=bezier.Q1,limit=1] Pos[0] double .00001 run scoreboard players get .Q1_x RTC_bezier_math
execute store result entity @e[type=marker,tag=bezier.Q1,limit=1] Pos[1] double .00001 run scoreboard players get .Q1_y RTC_bezier_math
execute store result entity @e[type=marker,tag=bezier.Q1,limit=1] Pos[2] double .00001 run scoreboard players get .Q1_z RTC_bezier_math