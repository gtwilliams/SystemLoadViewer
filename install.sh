#!/bin/sh
LOCAL=~/.local/share/plasma/plasmoids/org.kde.plasma.systemloadviewer
UI=contents/ui
CONFIG=contents/config
rm -rf $LOCAL
mkdir -p $LOCAL/$UI $LOCAL/$CONFIG
cp metadata.json $LOCAL
cp $UI/* $LOCAL/$UI
cp $CONFIG/* $LOCAL/$CONFIG

