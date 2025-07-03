from http.server import SimpleHTTPRequestHandler, HTTPServer

class CustomHandler(SimpleHTTPRequestHandler):
    def do_GET(self):
        if self.path in ('/', '/index.html'):
            self.path = '/home.html'
        return super().do_GET()

if __name__ == '__main__':
    server_address = ('', 2002)
    httpd = HTTPServer(server_address, CustomHandler)
    httpd.serve_forever()
