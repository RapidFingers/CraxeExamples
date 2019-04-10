@:require("asyncdispatch")
extern class Future<T> {
	public function addCallback(call:Future<T>->Void):Void;
	public function read():T;
}
