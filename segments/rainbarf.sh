# Print out Memory and CPU using https://github.com/creaktive/rainbarf

run_segment() {
	type rainbarf >/dev/null 2>&1
	if [ "$?" -ne 0 ]; then
		return
	fi

    # Customize via ~/.rainbarf.conf
    #green: free memory;
    #yellow: active memory;
    #blue: inactive memory;
    #red: wired memory on Mac OS X / FreeBSD; "unaccounted" memory on Linux;
    #cyan: cached memory on Linux, buf on FreeBSD.
    #magenta: used swap memory.
	stats=$(rainbarf --rgb --remaining)
	if [ -n "$stats" ]; then
		echo "$stats";
	fi
	return 0
}
