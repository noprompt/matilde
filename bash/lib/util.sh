util.directory?() {
    test -d $1
}

util.file?() {
    test -f $1
}

util.exists?() {
    test -e $1
}

function kill-grep() {
    kill `ps aux | grep "$1" | grep -v "grep" | awk '{print $2}'`
}
