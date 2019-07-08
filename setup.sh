#!/bin/sh

# Not sure about these two, but might be okay
adb shell settings put global package_verifier_enable 0
adb shell settings put global verifier_timeout 0

adb shell settings put secure user_setup_complete 1
adb shell settings put secure user_full_data_backup_aware 1
adb shell settings put global wifi_on 1
adb shell settings put global wifi_networks_available_notification_on 0
adb shell settings put global wifi_scan_always_enabled 1
adb shell settings put global ble_scan_always_enabled 1
adb shell settings put global assisted_gps_enabled 1
adb shell settings put global wifi_wakeup_enabled 0
adb shell settings put global volte_vt_enabled 1
adb shell settings put secure location_providers_allowed gps,network

# Preferred network mode: WCDMA preferred
adb shell settings put global preferred_network_mode1 0
adb shell settings put global preferred_network_mode "22,20"

adb shell settings put secure double_tap_to_wake 0
adb shell settings put secure screensaver_enabled 0
adb shell settings put global development_settings_enabled 1
adb shell settings put secure adb_notify 0
adb shell settings put secure spell_checker_enabled 0
adb shell settings put secure long_press_timeout 350
adb shell settings put system screenrecord_quality_mode 0
adb shell settings put secure immersive_mode_confirmations confirmed

adb shell settings put global charging_sounds_enabled 0
adb shell settings put system sound_effects_enabled 0
adb shell settings put system screenshot_shutter_sound 0
adb shell settings put system lockscreen_sounds_enabled 0
adb shell settings put system haptic_feedback_enabled 1

adb shell settings put global auto_time_zone 0
adb shell settings put system time_12_24 24

# This doesn't seem to work fine 
# adb shell "su -c setprop persist.sys.timezone Asia/Yekaterinburg"

adb shell settings put global airplane_mode_radios cell,nfc
adb shell settings put global airplane_mode_toggleable_radios wifi,bluetooth
adb shell settings put secure sysui_qs_tiles wifi,cell,airplane,rotation,flashlight,bt,dnd,caffeine,screenrecord
adb shell settings put secure icon_blacklist mobile,rotate,nfc,headset

# Disable default print service
adb shell settings put secure disabled_print_services com.android.bips/.BuiltInPrintService

adb shell pm disable-user --user 0 com.google.android.setupwizard
adb shell pm disable-user --user 0 com.google.android.apps.restore
adb shell pm disable-user --user 0 com.android.gallery3d
adb shell pm disable-user --user 0 com.android.email
adb shell pm disable-user --user 0 com.android.calculator2
adb shell pm disable-user --user 0 com.android.musicfx
adb shell pm disable-user --user 0 com.android.camera
adb shell pm disable-user --user 0 com.android.camera2
adb shell pm disable-user --user 0 com.android.stk
adb shell pm disable-user --user 0 com.android.music.debug
adb shell pm disable-user --user 0 com.crdroid.music
adb shell pm disable-user --user 0 org.lineageos.jelly
adb shell pm disable-user --user 0 org.lineageos.snap
adb shell pm disable-user --user 0 org.lineageos.eleven
# adb shell pm disable-user --user 0 org.lineageos.audiofx
adb shell pm disable-user --user 0 org.revenge.gramophone
adb shell pm disable-user --user 0 com.revenge.gramophone
adb shell pm disable-user --user 0 code.name.monkey.retromusic
adb shell pm disable-user --user 0 mark.via.gp

# Device Health Services, Digital Wellbeing and Actions Services
adb shell pm disable-user --user 0 com.google.android.apps.turbo
adb shell pm disable-user --user 0 com.google.android.apps.wellbeing
adb shell pm disable-user --user 0 com.google.android.as

echo Done
