extern class Distinct<T> {
    public function new(v:T);
}

@:require("asyncdispatch")
extern class Port extends Distinct<Int> {
    
}

@:require("asyncnet")
extern class AsyncSocket {
	@:topFunction
	@:native("newAsyncSocket")
	public static function create():AsyncSocket;
	public function bindAddr(port:Port, address:String = ""):Void;
	public function listen():Void;
    public function accept():Future<AsyncSocket>;
}
