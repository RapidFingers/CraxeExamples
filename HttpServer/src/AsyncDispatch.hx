import craxe.nim.Distinct;

@:require("asyncdispatch")
extern class Port extends Distinct<Int> {}

@:require("asyncdispatch")
extern class AsyncDispatch {
	@:topFunction
	public static function runForever():Void;
}
