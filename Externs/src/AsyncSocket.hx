extern abstract Port(Int) from Int {

}

@:require("asyncnet")
extern class AsyncSocket {
    @:constructor
    @:native("newAsyncSocket")    
    public static function create():AsyncSocket;
    public function bindAddr(port:Port, address:String = ""):Void;
    public function listen():Void;
}