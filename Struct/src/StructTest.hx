class User extends craxe.nim.Struct {
	public var id:Int;
	public var name:String;
	public var password:String;

	public function new() {}

	public function auth():Bool {
		if (name == "User")
			return true;
		
		return false;
	}
}

class StructTest {
	public static function main() {
		var user = new User();
		trace(user.auth());
	}
}
