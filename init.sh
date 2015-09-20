#!/bin/bash
now="$(date '+%Y-%m-%d_%H-%M-%S')"

echo "Switching branch to firefox"
git checkout 'firefox'
echo " downloading..."
wget 'http://mozilla.locamotion.org/export/?path=/ro/firefox/' -O 'firefox.zip'
echo " unzipping..."
unzip -o 'firefox.zip'
rm 'firefox.zip'
echo " adding and committing $now..."
git add -A
git commit -m "Autoupdate: $now"

echo "Switching branch to firefox-for-android"
git checkout 'firefox-for-android'
echo " downloading..."
wget 'http://mozilla.locamotion.org/export/?path=/ro/mobile/' -O 'firefox-for-android.zip'
echo " unzipping..."
unzip -o 'firefox-for-android.zip'
rm 'firefox-for-android.zip'
echo " adding and committing $now..."
git add -A
git commit -m "Autoupdate: $now"

echo "Switching branch to lightning"
git checkout lightning
echo " downloading..."
wget 'http://mozilla.locamotion.org/export/?path=/ro/lightning/' -O 'lightning.zip'
echo " unzipping..."
unzip -o 'lightning.zip'
rm lightning.zip
echo " adding and committing $now..."
git add -A
git commit -m "Autoupdate: $now"

echo "Switching branch to thunderbird"
git checkout thunderbird
echo " downloading..."
wget 'http://mozilla.locamotion.org/export/?path=/ro/thunderbird/' -O 'thunderbird.zip'
echo " unzipping..."
unzip -o 'thunderbird.zip'
rm 'thunderbird.zip'
echo " adding and committing $now..."
git add -A
git commit -m "Autoupdate: $now"

echo "Switching branch to ffos-2.0"
git checkout ffos-2.0
echo " downloading..."
wget 'http://mozilla.locamotion.org/export/?path=/ro/firefoxos_2.0/' -O 'ffos-2.0.zip'
echo " unzipping..."
unzip -o 'ffos-2.0.zip'
rm 'ffos-2.0.zip'
echo " adding and committing $now..."
git add -A
git commit -m "Autoupdate: $now"

echo "Switching branch to ffos-2.1"
git checkout ffos-2.1
wget 'http://mozilla.locamotion.org/export/?path=/ro/firefoxos_2.1/' -O 'ffos-2.1.zip'
unzip -o 'ffos-2.1.zip'
rm 'ffos-2.1.zip'
echo " adding and committing $now..."
git add -A
git commit -m "Autoupdate: $now"

echo "Switching branch to ffos-2.2"
git checkout ffos-2.2
echo " downloading..."
wget 'http://mozilla.locamotion.org/export/?path=/ro/firefoxos_2.2/' -O 'ffos-2.2.zip'
echo " unzipping..."
unzip -o 'ffos-2.2.zip'
rm 'ffos-2.2.zip'
echo " adding and committing $now..."
git add -A
git commit -m "Autoupdate: $now"

echo "Switching branch to ffos-2.5"
git checkout ffos-2.5
echo " downloading..."
wget 'http://mozilla.locamotion.org/export/?path=/ro/firefoxos/' -O 'ffos-2.5.zip'
unzip -o 'ffos-2.5.zip'
echo " unzipping..."
rm 'ffos-2.5.zip'
echo " adding and committing $now..."
git add -A
git commit -m "Autoupdate: $now"

echo "Switching back to master branch"
git checkout master

echo "All done!"
