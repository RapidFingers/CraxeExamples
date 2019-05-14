import haxe.Json;
import craxe.nim.http.HttpServer;
import craxe.nim.async.AsyncDispatch;
import HtmlMacro.html;

class CraxeHttpServer {	
	public static function main() {
		var httpServer = new HttpServer(26301);
		httpServer.run((req, resp) -> {
			switch req.url.path {
				case "/plain":
					resp.contentType = "text/html";
					resp.send(html(
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
					resp.contentType = "application/json";
					resp.send(userStr);
				case _:
					resp.send("Unknown route");
			}			
		});

		AsyncDispatch.runForever();
	}
}
