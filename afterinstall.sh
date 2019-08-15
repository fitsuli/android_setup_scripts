#!/bin/sh

AS="adb shell"

# Fluid NG
# $AS settings put secure accessibility_enabled 1
# $AS settings put secure enabled_accessibility_services com.fb.fluid/com.fb.fluid.MainAccessibilityService

# Notify & Fitness for Mi Band notification listener
# $AS su --preserve-environment -c "settings set secure enabled_notification_listeners com.mc.miband1/com.mc.miband1.NotificationService50"

# $AS settings put secure tts_default_synth com.google.android.tts

# Disable AOSP keyboard
$AS ime disable com.android.inputmethod.latin/.LatinIME

# Clear Card Emulator app's data
# $AS pm clear --user 0 com.yuanwofei.cardemulator.pro
# $AS pm grant --user 0 com.yuanwofei.cardemulator.pro android.permission.WRITE_EXTERNAL_STORAGE
# $AS pm grant --user 0 com.yuanwofei.cardemulator.pro android.permission.READ_EXTERNAL_STORAGE

# Add a few apps to the Doze whitelist
$AS dumpsys deviceidle whitelist +com.topjohnwu.magisk
$AS dumpsys deviceidle whitelist +net.dinglisch.android.taskerm
$AS dumpsys deviceidle whitelist +com.arlosoft.macrodroid
$AS dumpsys deviceidle whitelist +com.mc.miband1
$AS dumpsys deviceidle whitelist +com.android.deskclock
$AS dumpsys deviceidle whitelist +com.google.android.deskclock
$AS dumpsys deviceidle whitelist +com.google.android.GoogleCamera
$AS dumpsys deviceidle whitelist +at.bitfire.davdroid

# Revoke most of the Google Play permissions
$AS pm revoke --user 0 com.android.vending android.permission.ACCESS_COARSE_LOCATION
$AS pm revoke --user 0 com.android.vending android.permission.SEND_SMS
$AS pm revoke --user 0 com.android.vending android.permission.RECEIVE_SMS
$AS pm revoke --user 0 com.android.vending android.permission.READ_SMS
$AS pm revoke --user 0 com.android.vending android.permission.READ_CONTACTS

# Grant Storage permissions to Magisk Manager
$AS pm grant --user 0 com.topjohnwu.magisk android.permission.WRITE_EXTERNAL_STORAGE
$AS pm grant --user 0 com.topjohnwu.magisk android.permission.READ_EXTERNAL_STORAGE

# Disable some additional apps that I usually replace by third-party ones
$AS pm disable-user --user 0 com.android.deskclock
$AS pm disable-user --user 0 com.android.messaging
# $AS pm disable-user --user 0 com.android.dialer

# Disable LineageOS' AudioFX
$AS pm disable-user --user 0 org.lineageos.audiofx

$AS settings put secure sms_default_application "com.textra"
# $AS settings put secure dialer_default_application "com.google.android.dialer"

echo Done
