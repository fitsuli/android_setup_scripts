#!/bin/sh

AS="adb shell"

# $AS settings put secure tts_default_synth com.google.android.tts

# Disable AOSP keyboard
$AS ime disable com.android.inputmethod.latin/.LatinIME

# Add a few apps to the Doze whitelist
$AS dumpsys deviceidle whitelist +com.topjohnwu.magisk
$AS dumpsys deviceidle whitelist +net.dinglisch.android.taskerm
$AS dumpsys deviceidle whitelist +com.arlosoft.macrodroid
$AS dumpsys deviceidle whitelist +com.mc.miband1
$AS dumpsys deviceidle whitelist +com.android.deskclock
$AS dumpsys deviceidle whitelist +com.google.android.deskclock
$AS dumpsys deviceidle whitelist +com.google.android.GoogleCamera
$AS dumpsys deviceidle whitelist +at.bitfire.davdroid
$AS dumpsys deviceidle whitelist +at.bitfire.icsdroid
$AS dumpsys deviceidle whitelist +com.urbandroid.sleep

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
# $AS pm disable-user --user 0 com.android.messaging
# $AS pm disable-user --user 0 com.android.dialer

# Disable LineageOS' AudioFX
$AS pm disable-user --user 0 org.lineageos.audiofx

echo Done
