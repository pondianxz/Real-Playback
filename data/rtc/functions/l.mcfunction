scoreboard objectives add RTC_camera dummy
scoreboard objectives add RTC_check dummy
scoreboard objectives add RTC_keyframes dummy
scoreboard objectives add RTC_from_keyframe dummy
scoreboard objectives add RTC_paths dummy
scoreboard objectives add RTC_menu dummy
scoreboard objectives add RTC_settings dummy
scoreboard objectives add RTC_duration dummy
scoreboard objectives add RTC_timer dummy
scoreboard objectives add RTC_bezier_math dummy

execute unless score .core RTC_check matches 1 run function rtc:tools/all

execute if data storage rtc_path1:check check run data modify storage rtc_has_path:check check set value 1
execute if data storage rtc_path2:check check run data modify storage rtc_has_path:check check set value 1
execute if data storage rtc_path3:check check run data modify storage rtc_has_path:check check set value 1
execute if data storage rtc_path4:check check run data modify storage rtc_has_path:check check set value 1
execute if data storage rtc_path5:check check run data modify storage rtc_has_path:check check set value 1

execute unless score .core RTC_check matches 1 if data storage rtc_dfsettings:options check run function rtc:menu/settings/load/import/df
execute unless score .core RTC_check matches 1 if data storage rtc_preset1:options check run function rtc:menu/settings/load/import/ps/1
execute unless score .core RTC_check matches 1 if data storage rtc_preset2:options check run function rtc:menu/settings/load/import/ps/2
execute unless score .core RTC_check matches 1 if data storage rtc_preset3:options check run function rtc:menu/settings/load/import/ps/3
execute unless score .core RTC_check matches 1 if data storage rtc_preset4:options check run function rtc:menu/settings/load/import/ps/4
execute unless score .core RTC_check matches 1 if data storage rtc_preset5:options check run function rtc:menu/settings/load/import/ps/5

execute unless score .core RTC_check matches 1 unless data storage rtc_dfsettings:options check unless data storage rtc_preset1:options check unless data storage rtc_preset2:options check unless data storage rtc_preset3:options check unless data storage rtc_preset4:options check unless data storage rtc_preset5:options check run scoreboard players set .f1 RTC_menu 0
execute unless score .core RTC_check matches 1 unless data storage rtc_dfsettings:options check unless data storage rtc_preset1:options check unless data storage rtc_preset2:options check unless data storage rtc_preset3:options check unless data storage rtc_preset4:options check unless data storage rtc_preset5:options check run scoreboard players set .f1_o1 RTC_menu 1

execute unless score .core RTC_check matches 1 unless data storage rtc_dfsettings:options check unless data storage rtc_preset1:options check unless data storage rtc_preset2:options check unless data storage rtc_preset3:options check unless data storage rtc_preset4:options check unless data storage rtc_preset5:options check run scoreboard players set .f2 RTC_menu 0

execute unless score .core RTC_check matches 1 unless data storage rtc_dfsettings:options check unless data storage rtc_preset1:options check unless data storage rtc_preset2:options check unless data storage rtc_preset3:options check unless data storage rtc_preset4:options check unless data storage rtc_preset5:options check run scoreboard players set .f2_o1 RTC_menu 0
execute unless score .core RTC_check matches 1 unless data storage rtc_dfsettings:options check unless data storage rtc_preset1:options check unless data storage rtc_preset2:options check unless data storage rtc_preset3:options check unless data storage rtc_preset4:options check unless data storage rtc_preset5:options check run scoreboard players set .f2_o2 RTC_menu 0
execute unless score .core RTC_check matches 1 unless data storage rtc_dfsettings:options check unless data storage rtc_preset1:options check unless data storage rtc_preset2:options check unless data storage rtc_preset3:options check unless data storage rtc_preset4:options check unless data storage rtc_preset5:options check run scoreboard players set .f2_o3 RTC_menu 0

execute unless score .core RTC_check matches 1 unless data storage rtc_dfsettings:options check unless data storage rtc_preset1:options check unless data storage rtc_preset2:options check unless data storage rtc_preset3:options check unless data storage rtc_preset4:options check unless data storage rtc_preset5:options check run scoreboard players set .f2.f2 RTC_menu 0
execute unless score .core RTC_check matches 1 unless data storage rtc_dfsettings:options check unless data storage rtc_preset1:options check unless data storage rtc_preset2:options check unless data storage rtc_preset3:options check unless data storage rtc_preset4:options check unless data storage rtc_preset5:options check run scoreboard players set .f2.f3 RTC_menu 0
execute unless score .core RTC_check matches 1 unless data storage rtc_dfsettings:options check unless data storage rtc_preset1:options check unless data storage rtc_preset2:options check unless data storage rtc_preset3:options check unless data storage rtc_preset4:options check unless data storage rtc_preset5:options check run scoreboard players set .f2.f3.f1 RTC_menu 0
execute unless score .core RTC_check matches 1 unless data storage rtc_dfsettings:options check unless data storage rtc_preset1:options check unless data storage rtc_preset2:options check unless data storage rtc_preset3:options check unless data storage rtc_preset4:options check unless data storage rtc_preset5:options check run scoreboard players set .f2.f3.f2 RTC_menu 0
execute unless score .core RTC_check matches 1 unless data storage rtc_dfsettings:options check unless data storage rtc_preset1:options check unless data storage rtc_preset2:options check unless data storage rtc_preset3:options check unless data storage rtc_preset4:options check unless data storage rtc_preset5:options check run scoreboard players set .f2.f1 RTC_menu 0
execute unless score .core RTC_check matches 1 unless data storage rtc_dfsettings:options check unless data storage rtc_preset1:options check unless data storage rtc_preset2:options check unless data storage rtc_preset3:options check unless data storage rtc_preset4:options check unless data storage rtc_preset5:options check run scoreboard players set .f2.f1_o1 RTC_menu 0
execute unless score .core RTC_check matches 1 unless data storage rtc_dfsettings:options check unless data storage rtc_preset1:options check unless data storage rtc_preset2:options check unless data storage rtc_preset3:options check unless data storage rtc_preset4:options check unless data storage rtc_preset5:options check run scoreboard players set .f2.f1_o2 RTC_menu 0
execute unless score .core RTC_check matches 1 unless data storage rtc_dfsettings:options check unless data storage rtc_preset1:options check unless data storage rtc_preset2:options check unless data storage rtc_preset3:options check unless data storage rtc_preset4:options check unless data storage rtc_preset5:options check run scoreboard players set .f2.f1_o3 RTC_menu 0

execute unless score .core RTC_check matches 1 unless data storage rtc_dfsettings:options check unless data storage rtc_preset1:options check unless data storage rtc_preset2:options check unless data storage rtc_preset3:options check unless data storage rtc_preset4:options check unless data storage rtc_preset5:options check run scoreboard players set .f3 RTC_menu 0
execute unless score .core RTC_check matches 1 unless data storage rtc_dfsettings:options check unless data storage rtc_preset1:options check unless data storage rtc_preset2:options check unless data storage rtc_preset3:options check unless data storage rtc_preset4:options check unless data storage rtc_preset5:options check run scoreboard players set .keyframe_decimals RTC_keyframes 0

execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname1 set value '{"color":"green","text":"Keyframe 1"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname2 set value '{"color":"green","text":"Keyframe 2"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname3 set value '{"color":"green","text":"Keyframe 3"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname4 set value '{"color":"green","text":"Keyframe 4"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname5 set value '{"color":"green","text":"Keyframe 5"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname6 set value '{"color":"green","text":"Keyframe 6"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname7 set value '{"color":"green","text":"Keyframe 7"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname8 set value '{"color":"green","text":"Keyframe 8"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname9 set value '{"color":"green","text":"Keyframe 9"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname10 set value '{"color":"green","text":"Keyframe 10"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname11 set value '{"color":"green","text":"Keyframe 11"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname12 set value '{"color":"green","text":"Keyframe 12"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname13 set value '{"color":"green","text":"Keyframe 13"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname14 set value '{"color":"green","text":"Keyframe 14"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname15 set value '{"color":"green","text":"Keyframe 15"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname16 set value '{"color":"green","text":"Keyframe 16"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname17 set value '{"color":"green","text":"Keyframe 17"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname18 set value '{"color":"green","text":"Keyframe 18"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname19 set value '{"color":"green","text":"Keyframe 19"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname20 set value '{"color":"green","text":"Keyframe 20"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname21 set value '{"color":"green","text":"Keyframe 21"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname22 set value '{"color":"green","text":"Keyframe 22"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname23 set value '{"color":"green","text":"Keyframe 23"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname24 set value '{"color":"green","text":"Keyframe 24"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname25 set value '{"color":"green","text":"Keyframe 25"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname26 set value '{"color":"green","text":"Keyframe 26"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname27 set value '{"color":"green","text":"Keyframe 27"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname28 set value '{"color":"green","text":"Keyframe 28"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname29 set value '{"color":"green","text":"Keyframe 29"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname30 set value '{"color":"green","text":"Keyframe 30"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname31 set value '{"color":"green","text":"Keyframe 31"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname32 set value '{"color":"green","text":"Keyframe 32"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname33 set value '{"color":"green","text":"Keyframe 33"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname34 set value '{"color":"green","text":"Keyframe 34"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname35 set value '{"color":"green","text":"Keyframe 35"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname36 set value '{"color":"green","text":"Keyframe 36"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname37 set value '{"color":"green","text":"Keyframe 37"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname38 set value '{"color":"green","text":"Keyframe 38"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname39 set value '{"color":"green","text":"Keyframe 39"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname40 set value '{"color":"green","text":"Keyframe 40"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname41 set value '{"color":"green","text":"Keyframe 41"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname42 set value '{"color":"green","text":"Keyframe 42"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname43 set value '{"color":"green","text":"Keyframe 43"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname44 set value '{"color":"green","text":"Keyframe 44"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname45 set value '{"color":"green","text":"Keyframe 45"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname46 set value '{"color":"green","text":"Keyframe 46"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname47 set value '{"color":"green","text":"Keyframe 47"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname48 set value '{"color":"green","text":"Keyframe 48"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname49 set value '{"color":"green","text":"Keyframe 49"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname50 set value '{"color":"green","text":"Keyframe 50"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname51 set value '{"color":"green","text":"Keyframe 51"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname52 set value '{"color":"green","text":"Keyframe 52"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname53 set value '{"color":"green","text":"Keyframe 53"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname54 set value '{"color":"green","text":"Keyframe 54"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname55 set value '{"color":"green","text":"Keyframe 55"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname56 set value '{"color":"green","text":"Keyframe 56"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname57 set value '{"color":"green","text":"Keyframe 57"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname58 set value '{"color":"green","text":"Keyframe 58"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname59 set value '{"color":"green","text":"Keyframe 59"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname60 set value '{"color":"green","text":"Keyframe 60"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname61 set value '{"color":"green","text":"Keyframe 61"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname62 set value '{"color":"green","text":"Keyframe 62"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname63 set value '{"color":"green","text":"Keyframe 63"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname64 set value '{"color":"green","text":"Keyframe 64"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname65 set value '{"color":"green","text":"Keyframe 65"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname66 set value '{"color":"green","text":"Keyframe 66"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname67 set value '{"color":"green","text":"Keyframe 67"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname68 set value '{"color":"green","text":"Keyframe 68"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname69 set value '{"color":"green","text":"Keyframe 69"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname70 set value '{"color":"green","text":"Keyframe 70"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname71 set value '{"color":"green","text":"Keyframe 71"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname72 set value '{"color":"green","text":"Keyframe 72"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname73 set value '{"color":"green","text":"Keyframe 73"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname74 set value '{"color":"green","text":"Keyframe 74"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname75 set value '{"color":"green","text":"Keyframe 75"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname76 set value '{"color":"green","text":"Keyframe 76"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname77 set value '{"color":"green","text":"Keyframe 77"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname78 set value '{"color":"green","text":"Keyframe 78"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname79 set value '{"color":"green","text":"Keyframe 79"}'
execute unless score .core RTC_check matches 1 run data modify storage rtc_keyframes:aec customname80 set value '{"color":"green","text":"Keyframe 80"}'

forceload add 350000 350000

execute unless score .core RTC_check matches 1 run scoreboard players set .core RTC_check 1
function rtc:menu/main