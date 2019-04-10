@:require("asyncdispatch")
extern class AsyncDispatch {
    @:topFunction
	@:native("runForever")
	public static function runForever():Void;
}