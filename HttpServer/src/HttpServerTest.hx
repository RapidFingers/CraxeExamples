import craxe.nim.http.HttpServer;
import craxe.nim.async.AsyncDispatch;
import HtmlMacro.html;

class HttpServerTest {	
	public static function main() {
		var httpServer = new HttpServer(26301);
		httpServer.run((req) -> {
			req.sendOk(html(
				<html>
					<body>
						<h1>Hello world!!!</h1>
					</body>
				</html>
			));
		});

		AsyncDispatch.runForever();
	}
}
