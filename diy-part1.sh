#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;packages' >>feeds.conf.default
echo 'src-git passwall1 https://github.com/xiaorouji/openwrt-passwall.git;luci' >>feeds.conf.default

svn co https://github.com/kenzok8/small-package/trunk/redsocks2 package/diy/redsocks2
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/diy/luci-app-openclash
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-smartdns package/diy/luci-app-smartdns
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/smartdns package/diy/smartdns
# svn co https://github.com/kenzok8/small-package/trunk/ipt2socks package/diy/ipt2socks
# svn co https://github.com/kenzok8/small-package/trunk/microsocks package/diy/microsocks
# svn co https://github.com/kenzok8/small-package/trunk/dns2socks package/diy/dns2socks
# svn co https://github.com/kenzok8/small-package/trunk/pdnsd-alt package/diy/pdnsd-alt
