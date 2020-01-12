#!/bin/sh

AS="adb shell"

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
$AS pm disable-user --user 0 com.havoc.browser
$AS pm disable-user --user 0 org.lineageos.jelly
$AS pm disable-user --user 0 org.lineageos.snap
$AS pm disable-user --user 0 org.lineageos.eleven
$AS pm disable-user --user 0 org.cyanogenmod.eleven
$AS pm disable-user --user 0 org.revenge.gramophone
$AS pm disable-user --user 0 com.revenge.gramophone
$AS pm disable-user --user 0 org.omnirom.gramophone
$AS pm disable-user --user 0 code.name.monkey.retromusic

# Device Health Services, Digital Wellbeing and Actions Services
$AS pm disable-user --user 0 com.google.android.apps.turbo
$AS pm disable-user --user 0 com.google.android.apps.wellbeing
$AS pm disable-user --user 0 com.google.android.as
