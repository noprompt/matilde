# Path utilities

# Pretty print path.
function pretty-print-path() {
    echo $PATH | sed -e 's/:\{1,\}/ /g' | tr ' ' '\n'
}

# Appends a value to the PATH variable.
#
# @param [String] $1 The path to append
function path.push() {
    if [ -n "$1" ]; then
	export PATH="$PATH:$1"
    fi
}

# Prepends a path to the PATH variable.
#
# @param [String] $1 The path to prepend.
function path.unshift() {
    if [ -n "$1" ]; then
	export PATH="$1:$PATH"
    fi
}
