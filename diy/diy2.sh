#!/bin/bash
# OpenWrt DIY script part 2 (After Update feeds)

# translation fix
echo -e "\nmsgid \"NAS\"" >> feeds/luci/modules/luci-base/po/zh_Hans/base.po
echo -e "msgstr \"网络存储\"" >> feeds/luci/modules/luci-base/po/zh_Hans/base.po

# 配置ip
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/luci2/bin/config_generate

# 清除默认密码password
sed -i '/V4UetPzk$CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings

# 加入作者信息
sed -i "s/DISTRIB_DESCRIPTION='*.*'/DISTRIB_DESCRIPTION='OpenWrt-$(date +%Y%m%d)'/g" package/lean/default-settings/files/zzz-default-settings   
sed -i "s/DISTRIB_REVISION='*.*'/DISTRIB_REVISION=' by Kirin'/g" package/lean/default-settings/files/zzz-default-settings

# 更改主机名
sed -i "s/hostname='.*'/hostname='OpenWrt'/g" package/base-files/files/bin/config_generate
sed -i "s/hostname='.*'/hostname='OpenWrt'/g" package/base-files/luci2/bin/config_generate

# 清除多余的软件包源
sed -i "2ised -i '/kenzok/d' /etc/opkg/distfeeds.conf" package/lean/default-settings/files/zzz-default-settings
sed -i "3ised -i '/kenzok/d' /etc/opkg/distfeeds.conf" package/lean/default-settings/files/zzz-default-settings