# Path utilities

# Appends a value to the PATH variable.
#
# @param [String] $1 The path to append
function path.push() {
    export PATH="$PATH:$1"
}
