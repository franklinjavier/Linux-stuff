#!/bin/bash
# Script to install Sublime Text on Ubuntu
# Apr 9 2013 - @franklinjavier

echo "Downloading Sublime Text 2"
wget http://c758482.r82.cf2.rackcdn.com/Sublime\ Text\ 2.0.1\ x64.tar.bz2

echo "Unziping and moving"
tar -xvf Sublime\ Text\ 2.0.1\ x64.tar.bz2
mv Sublime\ Text\ 2 sublimeText
mv sublimeText /opt/

echo "Creating symlinks"
ln -s /opt/sublimeText/sublime_text /usr/bin/sublime
touch /usr/share/applications/sublime.desktop

echo "Creating .desktop file"
echo "
[Desktop Entry]
Version=1.0
Name=Sublime Text 2
# Only KDE 4 seems to use GenericName, so we reuse the KDE strings.
# From Ubuntu's language-pack-kde-XX-base packages, version #9.04-20090413.
GenericName=Text Editor

Exec=sublime
Terminal=false
Icon=/opt/sublimeText/Icon/48x48/sublime_text.png
Type=Application
Categories=TextEditor;IDE;Development
X-Ayatana-Desktop-Shortcuts=NewWindow

[NewWindow Shortcut Group]
Name=New Window
Exec=sublime -n
TargetEnvironment=Unity
" > /usr/share/applications/sublime.desktop

echo "Change sublime to default editor"
sed -i -e 's/gedit\.desktop/sublime\.desktop/g' /usr/share/applications/defaults.list

echo "Creating symlinks for icons on /usr/share/icons/hicolor/..."
ln -sf /opt/sublimeText/Icon/128x128/sublime_text.png /usr/share/icons/hicolor/128x128/apps/sublime-text-2.png
ln -sf /opt/sublimeText/Icon/256x256/sublime_text.png /usr/share/icons/hicolor/256x256/apps/sublime-text-2.png
gtk-update-icon-cache /usr/share/icons/hicolor

echo "Installing package control" 
wget https://sublime.wbond.net/Package%20Control.sublime-package
echo "Moving package control to default folder"  
mv Package\ Control.sublime-package ~/.config/sublime-text-2/Installed\ Packages/