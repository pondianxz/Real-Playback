execute as @e[type=item,nbt={Item:{tag:{tag:{reset_banner:1b}}}}] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item,nbt={Item:{tag:{tag:{reset_banner:1b}}}}] run tp @s @p
execute as @e[type=item,nbt={Item:{tag:{tag:{reset_banner:1b}}}}] run tellraw @a [{"text":"\u25c6 "},{"text":"Keyframes Reset","color":"blue"}]
execute as @e[type=item,nbt={Item:{tag:{tag:{reset_banner:1b}}}}] run data modify entity @s PickupDelay set value 0
execute as @e[type=item,limit=1,nbt={Item:{tag:{tag:{reset_banner:1b}}}}] run function rtc:keyframes/reset