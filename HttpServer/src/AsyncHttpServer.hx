import craxe.nim.Distinct;
import AsyncDispatch.Port;

@:require("asynchttpserver")
extern class HttpCode extends Distinct<Int> {}

@:require("asynchttpserver")
extern class Request {
    public function respond(code: HttpCode, content: String):Future<Void>;
}

@:require("asynchttpserver")
extern class AsyncHttpServer {
    @:topFunction
	@:native("newAsyncHttpServer")
	public static function create():AsyncHttpServer;
    public function serve(port:Port, call:(Request)->Future<Void>):Future<Void>;
}