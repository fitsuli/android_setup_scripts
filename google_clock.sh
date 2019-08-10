#!/bin/sh

AS=adb shell
# Snooze duration, gradually increasing volume and some other settings
$AS su --preserve-environment -c "sed -i '/snooze_duration/{s/10/7/}' /data/user_de/0/com.google.android.deskclock/shared_prefs/com.google.android.deskclock_preferences.xml" 

$AS su --preserve-environment -c "sed -i '/flip_action/{s/1/0/}' /data/user_de/0/com.google.android.deskclock/shared_prefs/com.google.android.deskclock_preferences.xml"
$AS su --preserve-environment -c "sed -i '/flip_action/{s/2/0/}' /data/user_de/0/com.google.android.deskclock/shared_prefs/com.google.android.deskclock_preferences.xml"

$AS su --preserve-environment -c "sed -i '/week_start/{s/0/2/}' /data/user_de/0/com.google.android.deskclock/shared_prefs/com.google.android.deskclock_preferences.xml" 
$AS su --preserve-environment -c "sed -i '/week_start/{s/1/2/}' /data/user_de/0/com.google.android.deskclock/shared_prefs/com.google.android.deskclock_preferences.xml"

$AS su --preserve-environment -c "sed -i '/shake_action/{s/1/0/}' /data/user_de/0/com.google.android.deskclock/shared_prefs/com.google.android.deskclock_preferences.xml" 
$AS su --preserve-environment -c "sed -i '/shake_action/{s/2/0/}' /data/user_de/0/com.google.android.deskclock/shared_prefs/com.google.android.deskclock_preferences.xml" 

$AS su --preserve-environment -c "sed -i '/volume_button_setting/{s/0/1/}' /data/user_de/0/com.google.android.deskclock/shared_prefs/com.google.android.deskclock_preferences.xml" 
$AS su --preserve-environment -c "sed -i '/volume_button_setting/{s/2/1/}' /data/user_de/0/com.google.android.deskclock/shared_prefs/com.google.android.deskclock_preferences.xml"
