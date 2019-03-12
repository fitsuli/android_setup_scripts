@ECHO OFF
:: HUGE shoutout to FeraVolt/FeraLab for sed script
:: Titanium Backup -> lowest priority
adb shell su -c sed -i '/Titanium/{s/importance="3/importance="1/}' /data/system/notification_policy.xml

:: Notify & Fitness for Mi Band service -> lowest priority
:: Probably would interfere with something, but works okay on my device
adb shell su -c sed -i '/Service/{s/importance="3/importance="1/}' /data/system/notification_policy.xml

:: Disable Brave/Chrome Sites notifications
adb shell su -c sed -i '/Sites/{s/blocked="false/blocked="true/}' /data/system/notification_policy.xml

:: Disable Brave/Chrome Media notifications
adb shell su -c sed -i '/Media/{s/importance="3/importance="0/}' /data/system/notification_policy.xml

:: IME notification -> lowest priority
adb shell su -c sed -i '/VIRTUAL_KEYBOARD/{s/importance="2/importance="1/}' /data/system/notification_policy.xml

:: Developer notification -> lowest priority
adb shell su -c sed -i '/DEVELOPER/{s/importance="2/importance="1/}' /data/system/notification_policy.xml

:: Disable MacroDroid's persistent notification
adb shell su -c sed -i '/persistent_notification/{s/importance="2/importance="0/}' /data/system/notification_policy.xml


:: Reboot IMMEDIATELY in order to save all of the changes
adb reboot