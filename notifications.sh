#!/bin/sh

AS=adb shell
# HUGE shoutout to FeraVolt/FeraLab for sed stuff
# Titanium Backup -> lowest priority
$AS su -c sed -i '/Titanium/{s/importance="3/importance="1/}' /data/system/notification_policy.xml

# Notify & Fitness for Mi Band service -> lowest priority
# Probably would interfere with something, but works okay on my device
$AS su -c sed -i '/Service/{s/importance="3/importance="1/}' /data/system/notification_policy.xml
$AS su -c sed -i '/Service/{s/importance="2/importance="1/}' /data/system/notification_policy.xml

# Disable Brave/Chrome Media notifications
$AS su -c sed -i '/Media/{s/importance="3/importance="0/}' /data/system/notification_policy.xml

# IME notification -> lowest priority
$AS su -c sed -i '/VIRTUAL_KEYBOARD/{s/importance="2/importance="1/}' /data/system/notification_policy.xml

# Developer notification -> lowest priority
$AS su -c sed -i '/DEVELOPER/{s/importance="2/importance="1/}' /data/system/notification_policy.xml

# Disable MacroDroid's persistent notification
$AS su -c sed -i '/persistent_notification/{s/importance="2/importance="0/}' /data/system/notification_policy.xml
$AS su -c sed -i '/persistent_notification/{s/importance="3/importance="0/}' /data/system/notification_policy.xml

# Reboot IMMEDIATELY in order to save all of the changes
adb reboot
