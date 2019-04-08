using craxe.nim.StaticArray;

class ExternTest {
	public static function main() {
		var data = Md5Extern.toMD5("Hello world");
		var bytes = data.toBytes();
		trace(bytes.toString());
	}
}
