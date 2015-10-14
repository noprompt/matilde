# File utilities

file.directory?() {
    test -d $1
}

file.file?() {
    test -f $1
}

file.exists?() {
    test -e $1
}

file.link?() {
    test -L $1
}

file.readable?() {
    test -r $1
}

file.writable?() {
    test -w $1
}
