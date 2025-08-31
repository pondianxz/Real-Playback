execute if score PS4.f1_o1 RTC_settings matches 0 run data modify storage rtc_preset4:options f1o1 set value 0
execute if score PS4.f1_o1 RTC_settings matches 1 run data modify storage rtc_preset4:options f1o1 set value 1

execute if score PS4.f2_o1 RTC_settings matches 0 run data modify storage rtc_preset4:options f2o1 set value 0
execute if score PS4.f2_o1 RTC_settings matches 1 run data modify storage rtc_preset4:options f2o1 set value 1
execute if score PS4.f2_o1 RTC_settings matches 2 run data modify storage rtc_preset4:options f2o1 set value 2

execute if score PS4.f2_o2 RTC_settings matches 0 run data modify storage rtc_preset4:options f2o2 set value 0
execute if score PS4.f2_o2 RTC_settings matches 1 run data modify storage rtc_preset4:options f2o2 set value 1
execute if score PS4.f2_o2 RTC_settings matches 2 run data modify storage rtc_preset4:options f2o2 set value 2
execute if score PS4.f2_o2 RTC_settings matches 3 run data modify storage rtc_preset4:options f2o2 set value 3

execute if score PS4.f2_o3 RTC_settings matches 0 run data modify storage rtc_preset4:options f2o3 set value 0
execute if score PS4.f2_o3 RTC_settings matches 1 run data modify storage rtc_preset4:options f2o3 set value 1

execute if score PS4.f2.f1_o1 RTC_settings matches 0 run data modify storage rtc_preset4:options f2f1o1 set value 0
execute if score PS4.f2.f1_o1 RTC_settings matches 1 run data modify storage rtc_preset4:options f2f1o1 set value 1

execute if score PS4.f2.f1_o2 RTC_settings matches 0 run data modify storage rtc_preset4:options f2f1o2 set value 0
execute if score PS4.f2.f1_o2 RTC_settings matches 1 run data modify storage rtc_preset4:options f2f1o2 set value 1

execute if score PS4.f2.f1_o3 RTC_settings matches 0 run data modify storage rtc_preset4:options f2f1o3 set value 0
execute if score PS4.f2.f1_o3 RTC_settings matches 1 run data modify storage rtc_preset4:options f2f1o3 set value 1
execute if score PS4.f2.f1_o3 RTC_settings matches 2 run data modify storage rtc_preset4:options f2f1o3 set value 2
execute if score PS4.f2.f1_o3 RTC_settings matches 3 run data modify storage rtc_preset4:options f2f1o3 set value 3
execute if score PS4.f2.f1_o3 RTC_settings matches 4 run data modify storage rtc_preset4:options f2f1o3 set value 4
execute if score PS4.f2.f1_o3 RTC_settings matches 5 run data modify storage rtc_preset4:options f2f1o3 set value 5
data modify storage rtc_preset4:options check set value 1
data modify storage rtc_menu:event event set value '{"text":"● Settings exported to: (world)/data/command_storage_rtc_preset4.dat","color":"gray"}'
function rtc:menu/main