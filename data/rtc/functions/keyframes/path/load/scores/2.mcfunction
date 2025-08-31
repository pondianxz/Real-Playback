execute at @e[type=area_effect_cloud,nbt={CustomName:'{"color":"green","text":"Keyframe 1"}'}] run scoreboard players set @e[type=marker,sort=nearest,tag=anchor,limit=1] RTC_camera 1
execute at @e[type=area_effect_cloud,nbt={CustomName:'{"color":"green","text":"Keyframe 2"}'}] run scoreboard players set @e[type=marker,sort=nearest,tag=anchor,limit=1] RTC_camera 2
scoreboard players set .every RTC_camera 2
