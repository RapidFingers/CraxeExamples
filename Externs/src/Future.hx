@:require("asyncdispatch")
extern class Future<T> {
    @:native("addCallback")
    public function handle(call:Void->Void):Void;
}