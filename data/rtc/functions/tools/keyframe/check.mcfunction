execute as @e[type=item,nbt={Item:{tag:{tag:{keyframe_banner:1b}}}}] at @s on origin run data modify entity @e[type=item,nbt={Item:{tag:{tag:{keyframe_banner:1b}}}},sort=nearest,limit=1] Owner set from entity @s UUID
execute as @e[type=item,nbt={Item:{tag:{tag:{keyframe_banner:1b}}}}] run data modify entity @s PickupDelay set value 0s
execute as @e[type=item,nbt={Item:{tag:{tag:{keyframe_banner:1b}}}}] at @s on origin run tp @e[type=item,nbt={Item:{tag:{tag:{keyframe_banner:1b}}}},sort=nearest,limit=1] @s
execute as @e[type=item,limit=1,nbt={Item:{tag:{tag:{keyframe_banner:1b}}}}] run function rtc:keyframes/place
