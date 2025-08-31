execute at @e[tag=bezier.L0] unless entity @e[tag=bezier.Q0] run summon marker ~ ~ ~ {Tags:["bezier.Q0"]}

execute store result storage rtc_bezier:math L1.Pos[0] double .001 run data get entity @e[tag=bezier.L1,limit=1] Pos[0] 1000
execute store result storage rtc_bezier:math L1.Pos[1] double .001 run data get entity @e[tag=bezier.L1,limit=1] Pos[1] 1000
execute store result storage rtc_bezier:math L1.Pos[2] double .001 run data get entity @e[tag=bezier.L1,limit=1] Pos[2] 1000
execute store result score .L0x RTC_bezier_math run data get entity @e[type=area_effect_cloud,nbt={CustomName:'{"color":"green","text":"Keyframe 1"}'},limit=1] Pos[0] 1000
execute store result score .L0y RTC_bezier_math run data get entity @e[type=area_effect_cloud,nbt={CustomName:'{"color":"green","text":"Keyframe 1"}'},limit=1] Pos[1] 1000
execute store result score .L0z RTC_bezier_math run data get entity @e[type=area_effect_cloud,nbt={CustomName:'{"color":"green","text":"Keyframe 1"}'},limit=1] Pos[2] 1000
execute store result score .L1x RTC_bezier_math run data get storage rtc_bezier:math L1.Pos[0] 1000
execute store result score .L1y RTC_bezier_math run data get storage rtc_bezier:math L1.Pos[1] 1000
execute store result score .L1z RTC_bezier_math run data get storage rtc_bezier:math L1.Pos[2] 1000

#Q0 = (1 - t)L0 + t*L1
scoreboard players set .100x_Q0 RTC_bezier_math 100

scoreboard players operation .100x_Q0 RTC_bezier_math -= .t RTC_bezier_math
scoreboard players operation .100x_Q0 RTC_bezier_math *= .L0x RTC_bezier_math
scoreboard players operation .L1x_calc RTC_bezier_math = .L1x RTC_bezier_math
scoreboard players operation .L1x_calc RTC_bezier_math *= .t RTC_bezier_math
scoreboard players operation .100x_Q0 RTC_bezier_math += .L1x_calc RTC_bezier_math
scoreboard players operation .Q0_x RTC_bezier_math = .100x_Q0 RTC_bezier_math

scoreboard players set .100y_Q0 RTC_bezier_math 100

scoreboard players operation .100y_Q0 RTC_bezier_math -= .t RTC_bezier_math
scoreboard players operation .100y_Q0 RTC_bezier_math *= .L0y RTC_bezier_math
scoreboard players operation .L1y_calc RTC_bezier_math = .L1y RTC_bezier_math
scoreboard players operation .L1y_calc RTC_bezier_math *= .t RTC_bezier_math
scoreboard players operation .100y_Q0 RTC_bezier_math += .L1y_calc RTC_bezier_math
scoreboard players operation .Q0_y RTC_bezier_math = .100y_Q0 RTC_bezier_math

scoreboard players set .100z_Q0 RTC_bezier_math 100

scoreboard players operation .100z_Q0 RTC_bezier_math -= .t RTC_bezier_math
scoreboard players operation .100z_Q0 RTC_bezier_math *= .L0z RTC_bezier_math
scoreboard players operation .L1z_calc RTC_bezier_math = .L1z RTC_bezier_math
scoreboard players operation .L1z_calc RTC_bezier_math *= .t RTC_bezier_math
scoreboard players operation .100z_Q0 RTC_bezier_math += .L1z_calc RTC_bezier_math
scoreboard players operation .Q0_z RTC_bezier_math = .100z_Q0 RTC_bezier_math

execute store result entity @e[type=marker,tag=bezier.Q0,limit=1] Pos[0] double .00001 run scoreboard players get .Q0_x RTC_bezier_math
execute store result entity @e[type=marker,tag=bezier.Q0,limit=1] Pos[1] double .00001 run scoreboard players get .Q0_y RTC_bezier_math
execute store result entity @e[type=marker,tag=bezier.Q0,limit=1] Pos[2] double .00001 run scoreboard players get .Q0_z RTC_bezier_math