#!/bin/bash
# OpenWrt DIY script part 1 (Before Update feeds)

sed -i '1i src-git kirinextra https://github.com/ninekirin/openwrt-packages' feeds.conf.default
sed -i '2i src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '3i src-git small https://github.com/kenzok8/small' feeds.conf.default
