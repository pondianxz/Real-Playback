tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n◆ Deleted Keyframe 20","color":"red"}
tag @e[type=marker,tag=anchor] remove RTC.KF.no_remove
execute at @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 20"}'}] run scoreboard players reset @e[type=marker,tag=anchor,sort=nearest,limit=1] RTC_camera
execute at @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 20"}'}] run kill @e[type=marker,tag=anchor,sort=nearest,limit=1]
execute as @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 20"}'}] run kill @s

execute at @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 1"}'}] run tag @e[type=marker,tag=anchor,sort=nearest,limit=1] add RTC.KF.no_remove
execute at @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 2"}'}] run tag @e[type=marker,tag=anchor,sort=nearest,limit=1] add RTC.KF.no_remove
execute at @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 3"}'}] run tag @e[type=marker,tag=anchor,sort=nearest,limit=1] add RTC.KF.no_remove
execute at @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 4"}'}] run tag @e[type=marker,tag=anchor,sort=nearest,limit=1] add RTC.KF.no_remove
execute at @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 5"}'}] run tag @e[type=marker,tag=anchor,sort=nearest,limit=1] add RTC.KF.no_remove
execute at @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 6"}'}] run tag @e[type=marker,tag=anchor,sort=nearest,limit=1] add RTC.KF.no_remove
execute at @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 7"}'}] run tag @e[type=marker,tag=anchor,sort=nearest,limit=1] add RTC.KF.no_remove
execute at @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 8"}'}] run tag @e[type=marker,tag=anchor,sort=nearest,limit=1] add RTC.KF.no_remove
execute at @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 9"}'}] run tag @e[type=marker,tag=anchor,sort=nearest,limit=1] add RTC.KF.no_remove
execute at @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 10"}'}] run tag @e[type=marker,tag=anchor,sort=nearest,limit=1] add RTC.KF.no_remove
execute at @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 11"}'}] run tag @e[type=marker,tag=anchor,sort=nearest,limit=1] add RTC.KF.no_remove
execute at @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 12"}'}] run tag @e[type=marker,tag=anchor,sort=nearest,limit=1] add RTC.KF.no_remove
execute at @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 13"}'}] run tag @e[type=marker,tag=anchor,sort=nearest,limit=1] add RTC.KF.no_remove
execute at @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 14"}'}] run tag @e[type=marker,tag=anchor,sort=nearest,limit=1] add RTC.KF.no_remove
execute at @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 15"}'}] run tag @e[type=marker,tag=anchor,sort=nearest,limit=1] add RTC.KF.no_remove
execute at @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 16"}'}] run tag @e[type=marker,tag=anchor,sort=nearest,limit=1] add RTC.KF.no_remove
execute at @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 17"}'}] run tag @e[type=marker,tag=anchor,sort=nearest,limit=1] add RTC.KF.no_remove
execute at @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 18"}'}] run tag @e[type=marker,tag=anchor,sort=nearest,limit=1] add RTC.KF.no_remove
execute at @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 19"}'}] run tag @e[type=marker,tag=anchor,sort=nearest,limit=1] add RTC.KF.no_remove

scoreboard players remove @e[type=marker,tag=anchor,tag=!RTC.KF.no_remove] RTC_camera 1
scoreboard players remove .every RTC_camera 1
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 21"}'}] CustomName set from storage rtc_keyframes:aec customname20
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 22"}'}] CustomName set from storage rtc_keyframes:aec customname21
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 23"}'}] CustomName set from storage rtc_keyframes:aec customname22
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 24"}'}] CustomName set from storage rtc_keyframes:aec customname23
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 25"}'}] CustomName set from storage rtc_keyframes:aec customname24
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 26"}'}] CustomName set from storage rtc_keyframes:aec customname25
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 27"}'}] CustomName set from storage rtc_keyframes:aec customname26
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 28"}'}] CustomName set from storage rtc_keyframes:aec customname27
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 29"}'}] CustomName set from storage rtc_keyframes:aec customname28
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 30"}'}] CustomName set from storage rtc_keyframes:aec customname29
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 31"}'}] CustomName set from storage rtc_keyframes:aec customname30
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 32"}'}] CustomName set from storage rtc_keyframes:aec customname31
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 33"}'}] CustomName set from storage rtc_keyframes:aec customname32
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 34"}'}] CustomName set from storage rtc_keyframes:aec customname33
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 35"}'}] CustomName set from storage rtc_keyframes:aec customname34
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 36"}'}] CustomName set from storage rtc_keyframes:aec customname35
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 37"}'}] CustomName set from storage rtc_keyframes:aec customname36
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 38"}'}] CustomName set from storage rtc_keyframes:aec customname37
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 39"}'}] CustomName set from storage rtc_keyframes:aec customname38
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 40"}'}] CustomName set from storage rtc_keyframes:aec customname39
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 41"}'}] CustomName set from storage rtc_keyframes:aec customname40
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 42"}'}] CustomName set from storage rtc_keyframes:aec customname41
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 43"}'}] CustomName set from storage rtc_keyframes:aec customname42
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 44"}'}] CustomName set from storage rtc_keyframes:aec customname43
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 45"}'}] CustomName set from storage rtc_keyframes:aec customname44
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 46"}'}] CustomName set from storage rtc_keyframes:aec customname45
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 47"}'}] CustomName set from storage rtc_keyframes:aec customname46
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 48"}'}] CustomName set from storage rtc_keyframes:aec customname47
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 49"}'}] CustomName set from storage rtc_keyframes:aec customname48
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 50"}'}] CustomName set from storage rtc_keyframes:aec customname49
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 51"}'}] CustomName set from storage rtc_keyframes:aec customname50
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 52"}'}] CustomName set from storage rtc_keyframes:aec customname51
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 53"}'}] CustomName set from storage rtc_keyframes:aec customname52
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 54"}'}] CustomName set from storage rtc_keyframes:aec customname53
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 55"}'}] CustomName set from storage rtc_keyframes:aec customname54
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 56"}'}] CustomName set from storage rtc_keyframes:aec customname55
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 57"}'}] CustomName set from storage rtc_keyframes:aec customname56
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 58"}'}] CustomName set from storage rtc_keyframes:aec customname57
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 59"}'}] CustomName set from storage rtc_keyframes:aec customname58
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 60"}'}] CustomName set from storage rtc_keyframes:aec customname59
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 61"}'}] CustomName set from storage rtc_keyframes:aec customname60
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 62"}'}] CustomName set from storage rtc_keyframes:aec customname61
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 63"}'}] CustomName set from storage rtc_keyframes:aec customname62
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 64"}'}] CustomName set from storage rtc_keyframes:aec customname63
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 65"}'}] CustomName set from storage rtc_keyframes:aec customname64
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 66"}'}] CustomName set from storage rtc_keyframes:aec customname65
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 67"}'}] CustomName set from storage rtc_keyframes:aec customname66
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 68"}'}] CustomName set from storage rtc_keyframes:aec customname67
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 69"}'}] CustomName set from storage rtc_keyframes:aec customname68
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 70"}'}] CustomName set from storage rtc_keyframes:aec customname69
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 71"}'}] CustomName set from storage rtc_keyframes:aec customname70
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 72"}'}] CustomName set from storage rtc_keyframes:aec customname71
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 73"}'}] CustomName set from storage rtc_keyframes:aec customname72
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 74"}'}] CustomName set from storage rtc_keyframes:aec customname73
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 75"}'}] CustomName set from storage rtc_keyframes:aec customname74
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 76"}'}] CustomName set from storage rtc_keyframes:aec customname75
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 77"}'}] CustomName set from storage rtc_keyframes:aec customname76
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 78"}'}] CustomName set from storage rtc_keyframes:aec customname77
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 79"}'}] CustomName set from storage rtc_keyframes:aec customname78
data modify entity @e[type=area_effect_cloud,limit=1,nbt={CustomName:'{"color":"green","text":"Keyframe 80"}'}] CustomName set from storage rtc_keyframes:aec customname79