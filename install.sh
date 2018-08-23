#!/bin/sh

rm -f changed
PFX=/usr/share/plasma/plasmoids/org.kde.plasma.systemloadviewer/contents
if ! diff ui/ColorSettings.qml $PFX/ui;then
    sudo mv $PFX/ui/ColorSettings.qml $PFX/ui/ColorSettings.qml.bak
    sudo cp ui/ColorSettings.qml $PFX/ui/ColorSettings.qml
    touch changed
fi
if ! diff ui/SystemLoadViewer.qml $PFX/ui;then
    sudo mv $PFX/ui/SystemLoadViewer.qml $PFX/ui/SystemLoadViewer.qml.bak
    sudo cp ui/SystemLoadViewer.qml $PFX/ui/SystemLoadViewer.qml
    touch changed
fi
if ! diff config/main.xml $PFX/config;then
    sudo mv $PFX/config/main.xml $PFX/config/main.xml.bak
    sudo cp config/main.xml $PFX/config/main.xml
    touch changed
fi
if [ -f changed ];then
    killall plasmashell
    /usr/bin/plasmashell&
fi
rm -f changed
