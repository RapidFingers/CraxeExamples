import AsyncSocket.Port;
import Md5Extern.MD5Digest;
using craxe.nim.PassModifier;

class ExternTest {
	static function testPassValue(v:Var<MD5Digest>) {
		trace(v);
	}

	public static function main() {		
		// var s = Md5Extern.getMD5("Good morning!!!");
		// trace(s);

		// var data = Md5Extern.toMD5("Hello world");		
		// testPassValue(data);
		var sock = AsyncSocket.create();
		sock.bindAddr(26300);
		sock.listen();
	}
}
