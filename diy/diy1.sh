#!/bin/bash
# OpenWrt DIY script part 1 (Before Update feeds)

# Add feed sources
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
