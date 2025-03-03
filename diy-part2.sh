#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate


# 清除默认主题
#sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
#=================================================
# 清除旧版argon主题并拉取最新版
#pushd package/lean
#rm -rf luci-theme-argon
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon luci-theme-argon
#popd
#=================================================



# 修改闪存为32m频率25MHz
#sed -i 's?IMAGE_SIZE := 16064k?IMAGE_SIZE := 32448k?g' target/linux/ramips/image/mt7621.mk
#sed -i 's?0xfb0000?0x1fb0000?g' target/linux/ramips/dts/mt7621_youhua_wr1200js.dts
#sed -i 's?spi-max-frequency = <10000000>?spi-max-frequency = <25000000>?g' target/linux/ramips/dts/mt7621_youhua_wr1200js.dts

