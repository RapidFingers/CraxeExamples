import craxe.nim.http.HttpServer;
import craxe.nim.async.AsyncDispatch;
import HtmlMacro.html;

class HttpServerTest {	
	public static function main() {
		var httpServer = new HttpServer(26301);
		httpServer.run((req) -> {
			switch req.url.path {
				case "/users":
					req.sendOk(html(
						<html>
							<body>
								<h1>Hello world!!!</h1>
							</body>
						</html>
					));
				case _:
					req.sendOk("Unknown route");
			}			
		});

		AsyncDispatch.runForever();
	}
}
