# called by dracut
check() {
	type -P losetup >/dev/null || return 1
	
	return 255
}

# called by dracut
depends() {
	echo crypt
}

# called by dracut
installkernel() {
	    instmods loop
}

# called by dracut
install() {
	inst_multiple losetup
	inst "$moddir/crypt-loop-lib.sh" "/lib/dracut-crypt-loop-lib.sh"
        dracut_need_initqueue
}