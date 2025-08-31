execute unless score .f2_o3 RTC_menu matches 1 run schedule clear rtc:keyframes/visible/tick
execute unless score .f2_o3 RTC_menu matches 1 run function rtc:keyframes/invisible/start

execute unless score .f2_o3 RTC_menu matches 1 run data merge entity @e[tag=estimate_time,limit=1] {CustomNameVisible:0b}

tag @s add player_check
scoreboard players operation .current RTC_camera = @s RTC_camera

# Position
execute if score .f2_o1 RTC_menu matches 0 as @e[type=marker,tag=anchor] if score @s RTC_camera = .current RTC_camera facing entity @s eyes run tp @p ^ ^ ^0.05
execute if score .f2_o1 RTC_menu matches 1 as @e[type=marker,tag=anchor] if score @s RTC_camera = .current RTC_camera facing entity @s eyes run tp @p ^ ^ ^0.1
execute if score .f2_o1 RTC_menu matches 2 as @e[type=marker,tag=anchor] if score @s RTC_camera = .current RTC_camera facing entity @s eyes run tp @p ^ ^ ^0.2

# Rotation
execute if score .f2_o2 RTC_menu matches 0 unless score .f2_o2 RTC_menu matches 3 as @e[type=marker,tag=anchor] if score @s RTC_camera = .current RTC_camera anchored eyes rotated as @s positioned ^ ^ ^5 rotated as @a[tag=player_check] positioned ^ ^ ^1000 facing entity @a[tag=player_check] eyes facing ^ ^ ^-1 positioned as @a[tag=player_check] run tp @p[tag=player_check] ~ ~ ~ ~ ~
execute if score .f2_o2 RTC_menu matches 1 unless score .f2_o2 RTC_menu matches 3 as @e[type=marker,tag=anchor] if score @s RTC_camera = .current RTC_camera anchored eyes rotated as @s positioned ^ ^ ^5 rotated as @a[tag=player_check] positioned ^ ^ ^500 facing entity @a[tag=player_check] eyes facing ^ ^ ^-1 positioned as @a[tag=player_check] run tp @p[tag=player_check] ~ ~ ~ ~ ~
execute if score .f2_o2 RTC_menu matches 2 unless score .f2_o2 RTC_menu matches 3 as @e[type=marker,tag=anchor] if score @s RTC_camera = .current RTC_camera anchored eyes rotated as @s positioned ^ ^ ^5 rotated as @a[tag=player_check] positioned ^ ^ ^100 facing entity @a[tag=player_check] eyes facing ^ ^ ^-1 positioned as @a[tag=player_check] run tp @p[tag=player_check] ~ ~ ~ ~ ~

execute as @e[type=marker,tag=anchor] if score @s RTC_camera = .current RTC_camera at @s run scoreboard players add @p[distance=..0.1,tag=player_check] RTC_camera 1
tag @s remove player_check
execute if score @s RTC_camera > .every RTC_camera unless score .every RTC_camera matches 0..1 run scoreboard players set .already_timed RTC_timer 1
execute if score @s RTC_camera > .every RTC_camera run function rtc:keyframes/path/end