execute at @e[type=area_effect_cloud,nbt={CustomName:'{"color":"green","text":"Keyframe 1"}'}] unless entity @e[tag=bezier.L0] run summon marker ~ ~ ~ {Tags:["bezier.L0"]}

execute store result storage rtc_bezier:math P1.Pos[0] double 1 run data get entity @e[tag=bezier.P1,limit=1] Pos[0]
execute store result storage rtc_bezier:math P1.Pos[1] double 1 run data get entity @e[tag=bezier.P1,limit=1] Pos[1]
execute store result storage rtc_bezier:math P1.Pos[2] double 1 run data get entity @e[tag=bezier.P1,limit=1] Pos[2]
scoreboard players operation .K1x RTC_bezier_math = .keyframe1_posX RTC_keyframes
scoreboard players operation .K1y RTC_bezier_math = .keyframe1_posY RTC_keyframes
scoreboard players operation .K1z RTC_bezier_math = .keyframe1_posZ RTC_keyframes
execute store result score .P1x RTC_bezier_math run data get storage rtc_bezier:math P1.Pos[0]
execute store result score .P1y RTC_bezier_math run data get storage rtc_bezier:math P1.Pos[1]
execute store result score .P1z RTC_bezier_math run data get storage rtc_bezier:math P1.Pos[2]

#L0 = (1 - t)K1 + t*P1
scoreboard players set .100x_L0 RTC_bezier_math 100

scoreboard players operation .100x_L0 RTC_bezier_math -= .t RTC_bezier_math
scoreboard players operation .100x_L0 RTC_bezier_math *= .K1x RTC_bezier_math
scoreboard players operation .P1x_calc RTC_bezier_math = .P1x RTC_bezier_math
scoreboard players operation .P1x_calc RTC_bezier_math *= .t RTC_bezier_math
scoreboard players operation .100x_L0 RTC_bezier_math += .P1x_calc RTC_bezier_math

scoreboard players set .100y_L0 RTC_bezier_math 100

scoreboard players operation .100y_L0 RTC_bezier_math -= .t RTC_bezier_math
scoreboard players operation .100y_L0 RTC_bezier_math *= .K1y RTC_bezier_math
scoreboard players operation .P1y_calc RTC_bezier_math = .P1y RTC_bezier_math
scoreboard players operation .P1y_calc RTC_bezier_math *= .t RTC_bezier_math
scoreboard players operation .100y_L0 RTC_bezier_math += .P1y_calc RTC_bezier_math

scoreboard players set .100z_L0 RTC_bezier_math 100

scoreboard players operation .100z_L0 RTC_bezier_math -= .t RTC_bezier_math
scoreboard players operation .100z_L0 RTC_bezier_math *= .K1z RTC_bezier_math
scoreboard players operation .P1z_calc RTC_bezier_math = .P1z RTC_bezier_math
scoreboard players operation .P1z_calc RTC_bezier_math *= .t RTC_bezier_math
scoreboard players operation .100z_L0 RTC_bezier_math += .P1z_calc RTC_bezier_math
execute store result entity @e[type=marker,tag=bezier.L0,limit=1] Pos[0] double .01 run scoreboard players get .100x_L0 RTC_bezier_math
execute store result entity @e[type=marker,tag=bezier.L0,limit=1] Pos[1] double .01 run scoreboard players get .100y_L0 RTC_bezier_math
execute store result entity @e[type=marker,tag=bezier.L0,limit=1] Pos[2] double .01 run scoreboard players get .100z_L0 RTC_bezier_math