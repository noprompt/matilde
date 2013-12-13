function http.GET() {
    curl -XGET $@
}

function http.POST() {
    curl -XPOST $@
}

function http.simple-server {
    python -m SimpleHTTPServer $1
}
