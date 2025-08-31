scoreboard players operation .K1_posX RTC_duration = .keyframe1_posX RTC_keyframes
scoreboard players operation .K1_posY RTC_duration = .keyframe1_posY RTC_keyframes
scoreboard players operation .K1_posZ RTC_duration = .keyframe1_posZ RTC_keyframes

scoreboard players operation .K2_posX RTC_duration = .keyframe2_posX RTC_keyframes
scoreboard players operation .K2_posY RTC_duration = .keyframe2_posY RTC_keyframes
scoreboard players operation .K2_posZ RTC_duration = .keyframe2_posZ RTC_keyframes

scoreboard players operation .K2_posX RTC_duration -= .K1_posX RTC_duration
scoreboard players operation .K2_posY RTC_duration -= .K1_posY RTC_duration
scoreboard players operation .K2_posZ RTC_duration -= .K1_posZ RTC_duration

scoreboard players operation .total RTC_duration = .K2_posX RTC_duration
scoreboard players operation .total RTC_duration += .K2_posY RTC_duration
scoreboard players operation .total RTC_duration += .K2_posZ RTC_duration

execute if score .keyframe_decimals RTC_keyframes matches 1 run scoreboard players operation .total RTC_duration /= .10 RTC_duration
execute if score .keyframe_decimals RTC_keyframes matches 2 run scoreboard players operation .total RTC_duration /= .100 RTC_duration
execute if score .keyframe_decimals RTC_keyframes matches 3 run scoreboard players operation .total RTC_duration /= .1000 RTC_duration
execute if score .keyframe_decimals RTC_keyframes matches 4 run scoreboard players operation .total RTC_duration /= .10000 RTC_duration
execute if score .keyframe_decimals RTC_keyframes matches 5 run scoreboard players operation .total RTC_duration /= .100000 RTC_duration
execute if score .keyframe_decimals RTC_keyframes matches 6 run scoreboard players operation .total RTC_duration /= .1000000 RTC_duration

execute unless score .ended_path RTC_camera matches 1 run scoreboard players operation .seconds RTC_duration = .total RTC_duration
execute unless score .ended_path RTC_camera matches 1 run scoreboard players set .subtract_seconds RTC_duration 0

# If coordinates are negative, don't make the scoreboard values negative
execute unless score .ended_path RTC_camera matches 1 if score .seconds RTC_duration matches ..-1 run scoreboard players operation .seconds RTC_duration *= .-1 RTC_duration

execute unless score .ended_path RTC_camera matches 1 unless score .seconds RTC_duration matches 60.. run scoreboard players set .minutes RTC_duration 0
execute unless score .ended_path RTC_camera matches 1 if score .seconds RTC_duration matches 60.. run scoreboard players operation .minutes RTC_duration = .seconds RTC_duration
execute unless score .ended_path RTC_camera matches 1 if score .seconds RTC_duration matches 60.. run scoreboard players operation .minutes RTC_duration /= .60 RTC_duration

execute unless score .ended_path RTC_camera matches 1 if score .seconds RTC_duration matches 60.. run scoreboard players add .subtract_seconds RTC_duration 60
execute unless score .ended_path RTC_camera matches 1 if score .seconds RTC_duration matches 120.. run scoreboard players add .subtract_seconds RTC_duration 60
execute unless score .ended_path RTC_camera matches 1 if score .seconds RTC_duration matches 180.. run scoreboard players add .subtract_seconds RTC_duration 60
execute unless score .ended_path RTC_camera matches 1 if score .seconds RTC_duration matches 240.. run scoreboard players add .subtract_seconds RTC_duration 60
execute unless score .ended_path RTC_camera matches 1 if score .seconds RTC_duration matches 300.. run scoreboard players add .subtract_seconds RTC_duration 60
execute unless score .ended_path RTC_camera matches 1 if score .seconds RTC_duration matches 360.. run scoreboard players add .subtract_seconds RTC_duration 60
execute unless score .ended_path RTC_camera matches 1 if score .seconds RTC_duration matches 420.. run scoreboard players add .subtract_seconds RTC_duration 60
execute unless score .ended_path RTC_camera matches 1 if score .seconds RTC_duration matches 480.. run scoreboard players add .subtract_seconds RTC_duration 60
execute unless score .ended_path RTC_camera matches 1 if score .seconds RTC_duration matches 540.. run scoreboard players add .subtract_seconds RTC_duration 60
execute unless score .ended_path RTC_camera matches 1 if score .seconds RTC_duration matches 600.. run scoreboard players add .subtract_seconds RTC_duration 60
execute unless score .ended_path RTC_camera matches 1 if score .seconds RTC_duration matches 660.. run scoreboard players add .subtract_seconds RTC_duration 60
execute unless score .ended_path RTC_camera matches 1 if score .seconds RTC_duration matches 60.. run scoreboard players operation .seconds RTC_duration -= .subtract_seconds RTC_duration

# If Speed is Medium/Fast, divide the estimated duration
execute unless score .ended_path RTC_camera matches 1 if score .f2_o1 RTC_menu matches 1 run scoreboard players operation .seconds RTC_duration /= .2 RTC_duration
execute unless score .ended_path RTC_camera matches 1 if score .f2_o1 RTC_menu matches 2 run scoreboard players operation .seconds RTC_duration /= .4 RTC_duration
function rtc:keyframes/path/duration/display