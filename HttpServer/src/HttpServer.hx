import AsyncHttpServer.HttpCode;
import AsyncDispatch.Port;
import HtmlMacro.html;

class HttpServer {	
	public static function main() {
		var httpServer = AsyncHttpServer.create();
		httpServer.serve(new Port(26301), (req) -> {
			return req.respond(new HttpCode(200), html(
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
