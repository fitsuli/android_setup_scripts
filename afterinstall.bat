@ECHO OFF
:: Fluid NG
adb shell settings put secure accessibility_enabled 1
adb shell settings put secure enabled_accessibility_services com.fb.fluid/com.fb.fluid.MainAccessibilityService

:: Notify & Fitness for Mi Band notification listener
adb shell settings put secure enabled_notification_listeners com.mc.miband1/com.mc.miband1.NotificationService50

:: Clear Card Emulator app's data
adb shell pm clear --user 0 com.yuanwofei.cardemulator.pro
adb shell pm grant --user 0 com.yuanwofei.cardemulator.pro android.permission.WRITE_EXTERNAL_STORAGE
adb shell pm grant --user 0 com.yuanwofei.cardemulator.pro android.permission.READ_EXTERNAL_STORAGE

:: Add a few apps to the Doze whitelist
adb shell dumpsys deviceidle whitelist +com.topjohnwu.magisk
adb shell dumpsys deviceidle whitelist +com.arlosoft.macrodroid
adb shell dumpsys deviceidle whitelist +com.mc.miband1
adb shell dumpsys deviceidle whitelist +com.android.deskclock
adb shell dumpsys deviceidle whitelist +com.google.android.GoogleCamera
adb shell dumpsys deviceidle whitelist +at.bitfire.davdroid