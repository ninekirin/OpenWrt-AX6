#!/bin/bash
# OpenWrt DIY script part 1 (Before Update feeds)

# Add feed sources
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default


# Replace Golang with the latest version
rm -rf feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang