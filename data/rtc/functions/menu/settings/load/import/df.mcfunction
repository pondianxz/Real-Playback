execute store result score .f1_o1 RTC_menu run data get storage rtc_dfsettings:options f1o1
execute store result score .f2_o1 RTC_menu run data get storage rtc_dfsettings:options f2o1
execute store result score .f2_o2 RTC_menu run data get storage rtc_dfsettings:options f2o2
execute store result score .f2_o3 RTC_menu run data get storage rtc_dfsettings:options f2o3
execute store result score .f2.f1_o1 RTC_menu run data get storage rtc_dfsettings:options f2f1o1
execute store result score .f2.f1_o2 RTC_menu run data get storage rtc_dfsettings:options f2f1o2
execute store result score .f2.f1_o3 RTC_menu run data get storage rtc_dfsettings:options f2f1o3
data modify storage rtc_menu:event event set value '{"text":"● Imported Default","color":"gray"}'
execute if score .core RTC_check matches 1 run function rtc:menu/main