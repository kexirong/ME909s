#
# Copyright (C) 2015 The LuCI Team <luci@lists.subsignal.org>
#
# This is free software, licensed under the GNU General Public License v2.
#

include $(TOPDIR)/rules.mk
PKG_NAME:=ME909s
PKG_VERSION:=1.0.0
LUCI_TITLE:=ME909s - web config for the ME909s modem
LUCI_DEPENDS:=+libpthread
PKG_LICENSE:=GPLv2
LUCI_PKGARCH:=all
PKG_MAINTAINER:=mirway
include ../../luci.mk


define Host/Install	#软件包的安装方法，主要就是将一系列编译好的文件、启动脚本、UCI配置文件等拷贝到指定位置
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/sendat $(1)/usr/bin
endef
# call BuildPackage - OpenWrt buildroot signature
