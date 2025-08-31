execute as @a[gamemode=spectator,scores={RTC_camera=1..}] at @s run function rtc:keyframes/path/main

# Set the "Age" NBT of Area Effect Clouds to 0
execute at @a run data modify entity @e[tag=keyframes,limit=1,sort=random] Age set value 0
data modify entity @e[tag=estimate_time,limit=1] Age set value 0
data modify entity @e[tag=rtc.etarget,limit=1] Age set value 0

# Check if tools are used
function rtc:tools/check

# Hide Keyframes
execute if score .f2_o3 RTC_menu matches 0 unless entity @a[gamemode=spectator,scores={RTC_camera=1..}] run schedule clear rtc:keyframes/invisible/tick
execute if score .f2_o3 RTC_menu matches 0 unless entity @a[gamemode=spectator,scores={RTC_camera=1..}] run function rtc:keyframes/visible/start
execute if score .f2_o3 RTC_menu matches 1 run schedule clear rtc:keyframes/visible/tick
execute if score .f2_o3 RTC_menu matches 1 run function rtc:keyframes/invisible/start

tag @e[type=item,nbt={Item:{tag:{tag:{marker:1b}}}}] add checked

# End path by looking up/down
execute store result score .end_check RTC_camera run data get entity @a[gamemode=spectator,limit=1,scores={RTC_camera=1..}] Rotation[1]
execute store result score .end_check_bz RTC_camera run data get entity @a[gamemode=spectator,limit=1,scores={RTC_bezier_math=1..}] Rotation[1]
execute as @a[gamemode=spectator,limit=1,scores={RTC_camera=1..}] if score .f2.f1_o2 RTC_menu matches 0 if score .end_check RTC_camera matches -90..-85 run function rtc:keyframes/path/end
execute as @a[gamemode=spectator,limit=1,scores={RTC_bezier_math=1..}] if score .f2.f1_o2 RTC_menu matches 0 if score .end_check_bz RTC_camera matches -90..-85 run function rtc:keyframes/path/end

execute as @a[gamemode=spectator,limit=1,scores={RTC_camera=1..}] if score .f2.f1_o2 RTC_menu matches 1 if score .end_check RTC_camera matches 85..90 run function rtc:keyframes/path/end
execute as @a[gamemode=spectator,limit=1,scores={RTC_bezier_math=1..}] if score .end_check_bz RTC_camera matches 85..90 run function rtc:keyframes/path/end

# Store Keyframe Properties
function rtc:keyframes/properties/store/main
function rtc:keyframes/properties/tellraw

# Set Rotation from another keyframe
function rtc:keyframes/properties/set/rot0
function rtc:keyframes/properties/set/rot1

# Set ".all" and ".none" scores for Keyframe Paths
execute unless score .path1 RTC_paths matches 1 unless score .path2 RTC_paths matches 1 unless score .path3 RTC_paths matches 1 unless score .path4 RTC_paths matches 1 unless score .path5 RTC_paths matches 1 run scoreboard players set .none RTC_paths 1
execute if score .path1 RTC_paths matches 1 unless score .none RTC_paths matches 0 run scoreboard players set .none RTC_paths 0
execute if score .path2 RTC_paths matches 1 unless score .none RTC_paths matches 0 run scoreboard players set .none RTC_paths 0
execute if score .path3 RTC_paths matches 1 unless score .none RTC_paths matches 0 run scoreboard players set .none RTC_paths 0
execute if score .path4 RTC_paths matches 1 unless score .none RTC_paths matches 0 run scoreboard players set .none RTC_paths 0
execute if score .path5 RTC_paths matches 1 unless score .none RTC_paths matches 0 run scoreboard players set .none RTC_paths 0
execute if score .none RTC_paths matches 1 unless score .all RTC_paths matches 0 run scoreboard players set .all RTC_paths 0

# Set ".all" and ".none" scores for Settings Presets
execute unless score .preset1 RTC_settings matches 1 unless score .preset2 RTC_settings matches 1 unless score .preset3 RTC_settings matches 1 unless score .preset4 RTC_settings matches 1 unless score .preset5 RTC_settings matches 1 run scoreboard players set .none_ps RTC_settings 1
execute if score .preset1 RTC_settings matches 1 unless score .none_ps RTC_settings matches 0 run scoreboard players set .none_ps RTC_settings 0
execute if score .preset2 RTC_settings matches 1 unless score .none_ps RTC_settings matches 0 run scoreboard players set .none_ps RTC_settings 0
execute if score .preset3 RTC_settings matches 1 unless score .none_ps RTC_settings matches 0 run scoreboard players set .none_ps RTC_settings 0
execute if score .preset4 RTC_settings matches 1 unless score .none_ps RTC_settings matches 0 run scoreboard players set .none_ps RTC_settings 0
execute if score .preset5 RTC_settings matches 1 unless score .none_ps RTC_settings matches 0 run scoreboard players set .none_ps RTC_settings 0
execute if score .none_ps RTC_settings matches 1 unless score .all_ps RTC_settings matches 0 run scoreboard players set .all_ps RTC_settings 0

# Calculate Path Duration
execute at @e[type=area_effect_cloud,nbt={Tags:["keyframes"],CustomName:'{"color":"green","text":"Keyframe 1"}'}] unless entity @e[tag=estimate_time] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:1b,Duration:19999980,Tags:["estimate_time"],CustomName:'{"color":"yellow","extra":[{"color":"white","text":"??:??"}],"text":"Duration: "}'}
scoreboard players set .-1 RTC_duration -1
scoreboard players set .2 RTC_duration 2
scoreboard players set .4 RTC_duration 4
scoreboard players set .60 RTC_duration 60

scoreboard players set .10 RTC_duration 10
scoreboard players set .100 RTC_duration 100
scoreboard players set .1000 RTC_duration 1000
scoreboard players set .10000 RTC_duration 10000
scoreboard players set .100000 RTC_duration 100000
scoreboard players set .1000000 RTC_duration 1000000
execute if score .every RTC_camera matches 2.. run function rtc:keyframes/path/duration/calc

# Make Path Duration invisible during camera path (Linear)
execute if score .f2_o3 RTC_menu matches 0 as @a[scores={RTC_camera=..0}] unless score @s RTC_bezier_math matches 1 run data merge entity @e[tag=estimate_time,limit=1] {CustomNameVisible:1b}
execute if score .f2_o3 RTC_menu matches 1 as @a[scores={RTC_camera=..0}] unless score @s RTC_bezier_math matches 1 run data merge entity @e[tag=estimate_time,limit=1] {CustomNameVisible:0b}

# Create Bezier Points for smooth interpolation
execute if score .every RTC_camera matches 2 unless entity @e[tag=bezier.P1] unless entity @e[tag=bezier.P2] run function rtc:keyframes/path/bezier/points

# Make it so you can't create more than 2 Entity Targets
execute store result score .etarget RTC_check if entity @e[tag=rtc.etarget]
execute if score .etarget RTC_check matches 2 run kill @e[tag=rtc.etarget,limit=1]

# Kill Entity target
execute if score .f2.f1_o1 RTC_menu matches 0 as @e[tag=rtc.etarget] run kill @s
execute if score .every RTC_camera matches ..1 as @e[tag=rtc.etarget] run tellraw @a {"text":"Not enough keyframes. Min: 2","color":"red"}
execute if score .every RTC_camera matches ..1 as @e[tag=rtc.etarget] run kill @s

# Make "Duration" and "Entity Target" invisible during camera path (Smooth)
execute as @a if score @s RTC_bezier_math matches 1 unless score .f2_o3 RTC_menu matches 1 run schedule clear rtc:keyframes/visible/tick
execute as @a if score @s RTC_bezier_math matches 1 unless score .f2_o3 RTC_menu matches 1 run function rtc:keyframes/invisible/start
execute as @a if score @s RTC_bezier_math matches 1 unless score .f2_o3 RTC_menu matches 1 run data merge entity @e[tag=estimate_time,limit=1] {CustomNameVisible:0b}
execute as @a if score @s RTC_bezier_math matches 1 unless score .f2_o3 RTC_menu matches 1 run data merge entity @e[tag=rtc.etarget,limit=1] {CustomNameVisible:0b}
execute as @a unless score @s RTC_bezier_math matches 1 unless score .f2_o3 RTC_menu matches 1 run data merge entity @e[tag=rtc.etarget,limit=1] {CustomNameVisible:1b}