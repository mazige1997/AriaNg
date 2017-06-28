#
# Copyright (C) 2016-2017 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=aria-ng
PKG_VERSION:=2017-06-26
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/mayswind/AriaNg-DailyBuild
PKG_SOURCE_VERSION:=a3222c952f91d7232123a371ed797ead69e7edb8

PKG_LICENSE:=LGPL-3.0
PKG_MAINTAINER:=Mazige <gaomin@gmail.com>

include $(INCLUDE_DIR)/package.mk

define Package/aria-ng
  SECTION:=net
  CATEGORY:=Network
  SUBMENU:=Download Manager
  DEPENDS:=
  TITLE:=Yet another aria2 web frontend
  URL:=https://github.com/mayswind/AriaNg-DailyBuild
  PKGARCH:=all
endef

define Package/aria-ng/description
	Yet Another Aria2 Web Frontend in pure HTML/CSS/Javascirpt.
endef

define Build/Compile
endef

define Package/aria-ng/install
	$(INSTALL_DIR) $(1)/www/aria-ng
	$(CP) \
		$(PKG_BUILD_DIR)/{css,fonts,js,langs} \
		$(1)/www/aria-ng
	$(CP) \
		$(PKG_BUILD_DIR)/{index.html,index.manifest} \
		$(1)/www/aria-ng
endef

$(eval $(call BuildPackage,aria-ng))
