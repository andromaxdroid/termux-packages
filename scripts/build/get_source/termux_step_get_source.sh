termux_step_get_source() {
	: "${TERMUX_PKG_SRCURL:=""}"

	if [ "${TERMUX_PKG_SRCURL:0:4}" == "git+" ]; then
		[ ! "$TERMUX_QUIET_BUILD" = true ] && echo "Downloading $TERMUX_PKG_NAME@$TERMUX_PKG_VERSION git source from '$TERMUX_PKG_SRCURL' if necessary..."
		termux_git_clone_src
	else
		if [ -z "${TERMUX_PKG_SRCURL}" ] || [ "${TERMUX_PKG_SKIP_SRC_EXTRACT-false}" = "true" ] || [ "$TERMUX_PKG_METAPACKAGE" = "true" ]; then
			mkdir -p "$TERMUX_PKG_SRCDIR"
			return
		fi
		[ ! "$TERMUX_QUIET_BUILD" = true ] && echo "Downloading $TERMUX_PKG_NAME@$TERMUX_PKG_VERSION source from '$TERMUX_PKG_SRCURL' if necessary..."
		termux_download_src_archive
		cd $TERMUX_PKG_TMPDIR
		termux_extract_src_archive
	fi
}
