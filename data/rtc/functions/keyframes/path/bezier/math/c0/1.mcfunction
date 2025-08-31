execute at @e[tag=bezier.Q0] unless entity @e[tag=bezier.C0] run summon marker ~ ~ ~ {Tags:["bezier.C0"]}

execute store result storage rtc_bezier:math Q1.Pos[0] double .001 run data get entity @e[tag=bezier.Q1,limit=1] Pos[0] 1000
execute store result storage rtc_bezier:math Q1.Pos[1] double .001 run data get entity @e[tag=bezier.Q1,limit=1] Pos[1] 1000
execute store result storage rtc_bezier:math Q1.Pos[2] double .001 run data get entity @e[tag=bezier.Q1,limit=1] Pos[2] 1000
execute store result score .Q0x RTC_bezier_math run data get entity @e[tag=bezier.Q0,limit=1] Pos[0] 1000
execute store result score .Q0y RTC_bezier_math run data get entity @e[tag=bezier.Q0,limit=1] Pos[1] 1000
execute store result score .Q0z RTC_bezier_math run data get entity @e[tag=bezier.Q0,limit=1] Pos[2] 1000
execute store result score .Q1x RTC_bezier_math run data get storage rtc_bezier:math Q1.Pos[0] 1000
execute store result score .Q1y RTC_bezier_math run data get storage rtc_bezier:math Q1.Pos[1] 1000
execute store result score .Q1z RTC_bezier_math run data get storage rtc_bezier:math Q1.Pos[2] 1000

#C0 = (1 - t)Q0 + t*Q1
scoreboard players set .100x_C0 RTC_bezier_math 100

scoreboard players operation .100x_C0 RTC_bezier_math -= .t RTC_bezier_math
scoreboard players operation .100x_C0 RTC_bezier_math *= .Q0x RTC_bezier_math
scoreboard players operation .Q1x_calc RTC_bezier_math = .Q1x RTC_bezier_math
scoreboard players operation .Q1x_calc RTC_bezier_math *= .t RTC_bezier_math
scoreboard players operation .100x_C0 RTC_bezier_math += .Q1x_calc RTC_bezier_math
scoreboard players operation .C0_x RTC_bezier_math = .100x_C0 RTC_bezier_math

scoreboard players set .100y_C0 RTC_bezier_math 100

scoreboard players operation .100y_C0 RTC_bezier_math -= .t RTC_bezier_math
scoreboard players operation .100y_C0 RTC_bezier_math *= .Q0y RTC_bezier_math
scoreboard players operation .Q1y_calc RTC_bezier_math = .Q1y RTC_bezier_math
scoreboard players operation .Q1y_calc RTC_bezier_math *= .t RTC_bezier_math
scoreboard players operation .100y_C0 RTC_bezier_math += .Q1y_calc RTC_bezier_math
scoreboard players operation .C0_y RTC_bezier_math = .100y_C0 RTC_bezier_math

scoreboard players set .100z_C0 RTC_bezier_math 100

scoreboard players operation .100z_C0 RTC_bezier_math -= .t RTC_bezier_math
scoreboard players operation .100z_C0 RTC_bezier_math *= .Q0z RTC_bezier_math
scoreboard players operation .Q1z_calc RTC_bezier_math = .Q1z RTC_bezier_math
scoreboard players operation .Q1z_calc RTC_bezier_math *= .t RTC_bezier_math
scoreboard players operation .100z_C0 RTC_bezier_math += .Q1z_calc RTC_bezier_math
scoreboard players operation .C0_z RTC_bezier_math = .100z_C0 RTC_bezier_math
execute store result entity @e[type=marker,tag=bezier.C0,limit=1] Pos[0] double .00001 run scoreboard players get .C0_x RTC_bezier_math
execute store result entity @e[type=marker,tag=bezier.C0,limit=1] Pos[1] double .00001 run scoreboard players get .C0_y RTC_bezier_math
execute store result entity @e[type=marker,tag=bezier.C0,limit=1] Pos[2] double .00001 run scoreboard players get .C0_z RTC_bezier_math