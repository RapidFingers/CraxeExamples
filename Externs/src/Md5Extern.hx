import haxe.io.Bytes;

import craxe.nim.*;

@:require("md5")
@:native("md5")
extern class Md5Extern {
    public static function toMD5(s: String):StaticArray<UInt8>;
}