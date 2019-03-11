@ECHO OFF
:: HUGE shoutout to FeraVolt/FeraLab for sed script
:: Titanium Backup -> lowest priority
adb shell su -c sed -i '/Titanium/{s/importance="3/importance="1/}' /data/system/notification_policy.xml

:: Notify & Fitness for Mi Band service -> lowest priority
:: Probably would interfere with something, but works okay on my device
adb shell su -c sed -i '/Service/{s/importance="3/importance="1/}' /data/system/notification_policy.xml



:: Reboot IMMEDIATELY in order to save all of the changes
adb reboot