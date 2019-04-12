import AsyncHttpServer.HttpCode;
import AsyncDispatch.Port;

class HttpServer {		
	public static function main() {		
		var httpServer = AsyncHttpServer.create();
		httpServer.serve(new Port(26301), (req) -> {
			return req.respond(new HttpCode(200), "Hello world!");
		});

		AsyncDispatch.runForever();
	}
}
