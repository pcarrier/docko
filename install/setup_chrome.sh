#!/bin/bash
set -euxo pipefail

curl -sSfLo /install/chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt-get -y install /install/chrome.deb
rm /install/chrome.deb
