import AsyncSocket.Port;
import Md5Extern.MD5Digest;
using craxe.nim.PassModifier;

class ExternTest {
	static function testPassValue(v:Var<MD5Digest>) {
		trace(v);
	}

	public static function main() {		
		var sock = AsyncSocket.create();
		sock.bindAddr(new Port(26301));
		sock.listen();
		sock.accept().handle(() -> {
			trace("GOOD");
		});
	}
}
