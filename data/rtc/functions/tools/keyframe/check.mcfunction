execute as @e[type=item,nbt={Item:{tag:{tag:{keyframe_banner:1b}}}}] run data modify entity @e[type=item,nbt={Item:{tag:{tag:{keyframe_banner:1b}}}},sort=nearest,limit=1] Owner set from entity @s Thrower
execute as @e[type=item,nbt={Item:{tag:{tag:{keyframe_banner:1b}}}}] run data modify entity @s PickupDelay set value 0
execute as @e[type=item,nbt={Item:{tag:{tag:{keyframe_banner:1b}}}}] run tp @e[type=item,nbt={Item:{tag:{tag:{keyframe_banner:1b}}}},sort=nearest,limit=1] @s
execute as @e[type=item,limit=1,nbt={Item:{tag:{tag:{keyframe_banner:1b}}}}] run function rtc:keyframes/place
