#!/bin/bash

TEMP_DEB="$(mktemp)" &&
wget -O "$TEMP_DEB" 'https://go.microsoft.com/fwlink/p/?LinkID=2112886&clcid=0x40a&culture=es-es&country=ES' &&
sudo dpkg -i "$TEMP_DEB"
rm -f "$TEMP_DEB"