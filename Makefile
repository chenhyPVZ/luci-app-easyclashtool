include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI support for Clash.Meta easy proxy control
LUCI_DEPENDS:=+coreutils +coreutils-base64 +ipset +iptables +uci +luci
LUCI_PKGARCH:=all
PKG_MAINTAINER:=ChenhyPVZ

include ../../luci.mk

# call BuildPackage - OpenWrt buildroot signature
