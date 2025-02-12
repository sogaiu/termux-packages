TERMUX_PKG_HOMEPAGE=https://www.xfce.org/
TERMUX_PKG_DESCRIPTION="Implementation of the freedesktop.org menu specification"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=4.16.1
TERMUX_PKG_REVISION=2
TERMUX_PKG_SRCURL=https://archive.xfce.org/src/xfce/garcon/${TERMUX_PKG_VERSION%.*}/garcon-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=84914927a2c1fda167f67af26a6640630a744a22940df508aa6c752cdbd3d21d
TERMUX_PKG_DEPENDS="libxfce4ui"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner"
TERMUX_PKG_CONFLICTS="libgarcon"
TERMUX_PKG_REPLACES="libgarcon"
TERMUX_PKG_PROVIDES="libgarcon"
TERMUX_PKG_DISABLE_GIR=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--enable-introspection=yes
"

termux_step_pre_configure() {
	termux_setup_gir
}
