@ECHO OFF
adb shell settings put global airplane_mode_radios cell,nfc,wimax
adb shell settings put global package_verifier_enable 0
adb shell settings put global wifi_networks_available_notification_on 0
adb shell settings put secure double_tap_to_wake 0
adb shell settings put secure screensaver_enabled 0
adb shell settings put secure user_setup_complete 1
adb shell settings put secure tts_default_synth=com.google.android.tts
adb shell settings put secure user_full_data_backup_aware 1
adb shell settings put secure sysui_qs_tiles wifi,cell,airplane,rotation,flashlight,bt,location,caffeine,screenrecord
adb shell settings put global development_settings_enabled 1
adb shell settings put global wifi_scan_always_enabled 0
adb shell settings put global charging_sounds_enabled 0
adb shell settings put global wifi_on 1
adb shell settings put secure adb_notify 0
adb shell 

adb shell pm disable-user --user 0 com.google.android.setupwizard
adb shell pm disable-user --user 0 com.google.android.apps.restore
adb shell pm disable-user --user 0 com.android.gallery3d
adb shell pm disable-user --user 0 com.android.email
adb shell pm disable-user --user 0 com.android.calculator2
adb shell pm disable-user --user 0 com.android.stk
adb shell pm disable-user --user 0 org.lineageos.jelly
adb shell pm disable-user --user 0 org.lineageos.snap
adb shell pm disable-user --user 0 com.google.android.apps.turbo
adb shell pm disable-user --user 0 com.google.android.apps.wellbeing

adb shell pm revoke --user 0 com.android.vending android.permission.ACCESS_COARSE_LOCATION
adb shell pm revoke --user 0 com.android.vending android.permission.SEND_SMS
adb shell pm revoke --user 0 com.android.vending android.permission.RECEIVE_SMS
adb shell pm revoke --user 0 com.android.vending android.permission.READ_SMS
adb shell pm revoke --user 0 com.android.vending android.permission.READ_CONTACTS

#adb shell pm clear --user 0 com.yuanwofei.cardemulator.pro
#adb shell pm grant --user 0 com.yuanwofei.cardemulator.pro android.permission.WRITE_EXTERNAL_STORAGE
#adb shell pm grant --user 0 com.yuanwofei.cardemulator.pro android.permission.READ_EXTERNAL_STORAGE

adb shell pm grant --user 0 com.topjohnwu.magisk android.permission.WRITE_EXTERNAL_STORAGE
adb shell pm grant --user 0 com.topjohnwu.magisk android.permission.READ_EXTERNAL_STORAGE

adb shell dumpsys deviceidle whitelist +com.topjohnwu.magisk
adb shell dumpsys deviceidle whitelist +com.arlosoft.macrodroid
adb shell dumpsys deviceidle whitelist +com.mc.miband1
adb shell dumpsys deviceidle whitelist +com.android.deskclock
adb shell dumpsys deviceidle whitelist +com.google.android.GoogleCamera