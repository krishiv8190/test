#!/bin/bash

set -exv

# Init Repo
repo init --depth=1 -u git:///github.com/Wave-Project/manifest -b r -g default,-device,-mips,-darwin,-notdefault

# Device sources
git clone https://github.com/krishiv8190/device_xiaomi_sakura-2 device/xiaomi/sakura
git clone https://github.com/geopd/vendor_xiaomi_sakura vendor/xiaomi
git clone https://github.com/darkhz/revvz_sakura kernel/xiaomi/msm8953

# Sync Repo
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j$(nproc --all)

