import js.node.Http;
import js.node.http.Server;
import HtmlMacro.html;

class NodeHttpServer {	
	public static function main() {
        var server = Http.createServer((req, resp) -> {  
            switch req.url {
                case "/users":
                    resp.end(html(
						<html>
							<body>
								<h1>Hello world!!!</h1>
							</body>
						</html>
					));
                case _:
                    resp.end("Unknown route");
            }            
        });
        server.listen(26301);
    }
}