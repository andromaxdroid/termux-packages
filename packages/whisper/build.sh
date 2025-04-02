TERMUX_PKG_HOMEPAGE=https://github.com/andromaxdroid
TERMUX_PKG_DESCRIPTION="whisper.cpp & autotrancibe"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@andromaxdroid"
TERMUX_PKG_VERSION=1.0.0
TERMUX_PKG_SRCURL=https://github.com/andromaxdroid/whisper.cpp/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=<SHA256_CHECKSUM>
TERMUX_PKG_DEPENDS="cmake, ffmpeg"
TERMUX_PKG_BUILD_IN_SRC=true


termux_step_make() {
	
	make
}
