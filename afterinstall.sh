#!/bin/sh

# Fluid NG
# adb shell settings put secure accessibility_enabled 1
# adb shell settings put secure enabled_accessibility_services com.fb.fluid/com.fb.fluid.MainAccessibilityService

# Notify & Fitness for Mi Band notification listener
# adb shell su --preserve-environment -c "settings set secure enabled_notification_listeners com.mc.miband1/com.mc.miband1.NotificationService50"

# adb shell settings put secure tts_default_synth com.google.android.tts

# Disable AOSP keyboard
adb shell ime disable com.android.inputmethod.latin/.LatinIME

# Clear Card Emulator app's data
# adb shell pm clear --user 0 com.yuanwofei.cardemulator.pro
# adb shell pm grant --user 0 com.yuanwofei.cardemulator.pro android.permission.WRITE_EXTERNAL_STORAGE
# adb shell pm grant --user 0 com.yuanwofei.cardemulator.pro android.permission.READ_EXTERNAL_STORAGE

# Add a few apps to the Doze whitelist
adb shell dumpsys deviceidle whitelist +com.topjohnwu.magisk
adb shell dumpsys deviceidle whitelist +net.dinglisch.android.taskerm
adb shell dumpsys deviceidle whitelist +com.arlosoft.macrodroid
adb shell dumpsys deviceidle whitelist +com.mc.miband1
adb shell dumpsys deviceidle whitelist +com.android.deskclock
adb shell dumpsys deviceidle whitelist +com.google.android.deskclock
adb shell dumpsys deviceidle whitelist +com.google.android.GoogleCamera
adb shell dumpsys deviceidle whitelist +at.bitfire.davdroid

# Revoke most Google Play permissions
adb shell pm revoke --user 0 com.android.vending android.permission.ACCESS_COARSE_LOCATION
adb shell pm revoke --user 0 com.android.vending android.permission.SEND_SMS
adb shell pm revoke --user 0 com.android.vending android.permission.RECEIVE_SMS
adb shell pm revoke --user 0 com.android.vending android.permission.READ_SMS
adb shell pm revoke --user 0 com.android.vending android.permission.READ_CONTACTS

# Grant Storage permissions to Magisk Manager
adb shell pm grant --user 0 com.topjohnwu.magisk android.permission.WRITE_EXTERNAL_STORAGE
adb shell pm grant --user 0 com.topjohnwu.magisk android.permission.READ_EXTERNAL_STORAGE

# Disable some additional apps that I usually replace by third-party ones
adb shell pm disable-user --user 0 com.android.deskclock
adb shell pm disable-user --user 0 com.android.dialer

adb shell settings put secure sms_default_application "com.textra"
# adb shell settings put secure dialer_default_application "com.google.android.dialer"

echo Done