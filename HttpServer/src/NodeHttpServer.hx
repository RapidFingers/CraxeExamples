import haxe.Json;
import js.node.Http;
import js.node.http.Server;
import HtmlMacro.html;

class NodeHttpServer {	
	public static function main() {
        var server = Http.createServer((req, resp) -> {  
            switch req.url {
                case "/plain":
                    resp.end(html(
						<html>
							<body>
								<h1>Hello world!!!</h1>
							</body>
						</html>
					));
                case "/json":
                    var userStr = Json.stringify({
                        "id": 3212,
                        "name": "Nandor",
                        "email": "nandor@gmail.com"
                    });
                    resp.writeHead(200, {
                        "Content-Type": "application/json"
                    });
                    resp.end(userStr);
                case _:
                    resp.end("Unknown route");
            }            
        });
        server.listen(26301);
    }
}