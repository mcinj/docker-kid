#!/usr/bin/with-contenv bash

set -eu
set -o pipefail

mkdir -p $HOME/Desktop
cat /usr/share/applications/org.kde.dolphin.desktop > $HOME/Desktop/dolphin.desktop
cat /usr/share/applications/org.kde.konsole.desktop > $HOME/Desktop/konsole.desktop

mkdir -p $HOME/.local/share/konsole
cat > "$HOME/.local/share/konsole/Default.profile" << EOF
[General]
Command=/bin/bash
Name=Default
Parent=FALLBACK/
EOF

chmod +x $HOME/Desktop/*
