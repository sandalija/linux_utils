#!/bin/bash

cd ~
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.8.0-amd64.deb
sudo apt install ./slack-desktop-*.deb
rm -f slack-desktop-*.deb