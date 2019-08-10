#!/bin/sh

AS=adb shell

# Not sure about these two, but might be okay
$AS settings put global package_verifier_enable 0
$AS settings put global verifier_timeout 0

$AS settings put secure user_setup_complete 1
$AS settings put secure user_full_data_backup_aware 1
$AS settings put global wifi_on 1
$AS settings put global wifi_networks_available_notification_on 0
$AS settings put global wifi_scan_always_enabled 1
$AS settings put global ble_scan_always_enabled 1
$AS settings put global assisted_gps_enabled 1
$AS settings put global wifi_wakeup_enabled 0
$AS settings put global volte_vt_enabled 1
$AS settings put secure location_providers_allowed gps,network

# Preferred network mode: WCDMA preferred
$AS settings put global preferred_network_mode1 0
$AS settings put global preferred_network_mode "22,20"

$AS settings put secure double_tap_to_wake 0
$AS settings put secure screensaver_enabled 0
$AS settings put global development_settings_enabled 1
$AS settings put secure adb_notify 0
$AS settings put secure spell_checker_enabled 0
$AS settings put secure long_press_timeout 350
$AS settings put system screenrecord_quality_mode 0
$AS settings put secure immersive_mode_confirmations confirmed

$AS settings put global charging_sounds_enabled 0
$AS settings put system sound_effects_enabled 0
$AS settings put system screenshot_shutter_sound 0
$AS settings put system lockscreen_sounds_enabled 0
$AS settings put system haptic_feedback_enabled 1

$AS settings put secure night_display_auto_mode 1
$AS settings put secure night_display_color_temperature 1600
$AS settings put secure night_display_custom_start_time 79200000

$AS settings put global auto_time_zone 0
$AS settings put system time_12_24 24

# This doesn't seem to work fine 
# $AS "su -c setprop persist.sys.timezone Asia/Yekaterinburg"

$AS settings put global airplane_mode_radios cell,nfc
$AS settings put global airplane_mode_toggleable_radios wifi,bluetooth
$AS settings put secure sysui_qs_tiles wifi,cell,airplane,rotation,flashlight,bt,dnd,caffeine,screenrecord
$AS settings put secure icon_blacklist mobile,rotate,nfc,headset

# Disable the default print service
$AS settings put secure disabled_print_services com.android.bips/.BuiltInPrintService

$AS pm disable-user --user 0 com.google.android.setupwizard
$AS pm disable-user --user 0 com.google.android.apps.restore
$AS pm disable-user --user 0 com.android.gallery3d
$AS pm disable-user --user 0 com.android.email
$AS pm disable-user --user 0 com.android.calculator2
$AS pm disable-user --user 0 com.android.musicfx
$AS pm disable-user --user 0 com.android.camera
$AS pm disable-user --user 0 com.android.camera2
$AS pm disable-user --user 0 com.android.stk
$AS pm disable-user --user 0 com.android.music.debug
$AS pm disable-user --user 0 com.crdroid.music
$AS pm disable-user --user 0 org.lineageos.jelly
$AS pm disable-user --user 0 org.lineageos.snap
$AS pm disable-user --user 0 org.lineageos.eleven
# $AS pm disable-user --user 0 org.lineageos.audiofx
$AS pm disable-user --user 0 org.revenge.gramophone
$AS pm disable-user --user 0 com.revenge.gramophone
$AS pm disable-user --user 0 org.omnirom.gramophone
$AS pm disable-user --user 0 code.name.monkey.retromusic
$AS pm disable-user --user 0 mark.via.gp

# Device Health Services, Digital Wellbeing and Actions Services
$AS pm disable-user --user 0 com.google.android.apps.turbo
$AS pm disable-user --user 0 com.google.android.apps.wellbeing
$AS pm disable-user --user 0 com.google.android.as

echo Done
