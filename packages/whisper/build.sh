TERMUX_PKG_HOMEPAGE=https://github.com/andromaxdroid
TERMUX_PKG_DESCRIPTION="whisper.cpp & autotrancibe"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@andromaxdroid"
TERMUX_PKG_VERSION=1.0.0
TERMUX_PKG_SRCURL=https://github.com/andromaxdroid/whisper.cpp/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=c4fe895af8fd3fb306aa30c412ffd321aa33e73ed4e85043adb07e142bc2c4d3
TERMUX_PKG_DEPENDS="cmake, ffmpeg"
TERMUX_PKG_BUILD_IN_SRC=true


termux_step_make() {
	cd whisper.cpp
	make
}
