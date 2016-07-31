function http.GET() {
    curl -XGET $@
}

function http.get() {
    curl -XGET $@
}

function http.POST() {
    curl -XPOST $@
}

function http.post() {
    curl -XPOST $@
}

function http.HEAD {
    curl -XHEAD $@
}

function http.head {
    curl -XHEAD $@
}

function http.simple-server {
    local port=$1
    python -m SimpleHTTPServer $port
}

