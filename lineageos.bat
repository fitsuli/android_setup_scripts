@ECHO OFF
adb shell su -c settings put --lineage system enable_people_lookup 0
adb shell su -c settings put --lineage system enable_forward_lookup 0
adb shell su -c settings put --lineage system enable_reverse_lookup 0

adb shell su -c settings put --lineage system live_display_hinted 1
adb shell su -c settings put --lineage system qs_quick_pulldown 1
adb shell su -c settings put --lineage system system_profiles_enabled 0
adb shell su -c settings put --lineage system torch_long_press_power_gesture 1
adb shell su -c settings put --lineage system torch_long_press_power_timeout 300
adb shell su -c settings put --lineage system trust_interface_hinted 1
adb shell su -c settings put --lineage system status_bar_clock 1
adb shell su -c settings put --lineage secure adb_notify 0
adb shell su -c settings put --lineage secure advanced_reboot 1

adb shell su -c settings put --lineage system battery_light_brightness_level 1
adb shell su -c settings put --lineage system battery_light_brightness_level_zen 1
adb shell su -c settings put --lineage secure button_brightness 0

echo Done