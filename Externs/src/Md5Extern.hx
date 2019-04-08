import craxe.nim.Struct;

extern class MD5Digest extends Struct {
	public function toString():String;
}

@:require("md5")
@:native("md5")
extern class Md5Extern {
	public static function toMD5(s:String):MD5Digest;
	public static function getMD5(s:String):String;
}
