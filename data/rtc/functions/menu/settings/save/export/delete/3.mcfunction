data remove storage rtc_preset3:options f1o1
data remove storage rtc_preset3:options f2o1
data remove storage rtc_preset3:options f2o2
data remove storage rtc_preset3:options f2o3
data remove storage rtc_preset3:options f2f1o1
data remove storage rtc_preset3:options f2f1o2
data remove storage rtc_preset3:options f2f1o3
data remove storage rtc_preset3:options check
data modify storage rtc_menu:event event set value '{"text":"● Deleted Preset 3 Export","color":"red"}'
function rtc:menu/main