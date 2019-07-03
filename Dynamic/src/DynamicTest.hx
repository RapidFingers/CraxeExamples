class User {
	public var id:String;

	public function new() {
		this.id = "UserID";
	}
}

class DynamicTest {
	static function getDynamic():Dynamic  {
		var s = "Good";
		s = s + " Morning";
		return s;
	}

	static function passDynamic(v:String) {
		trace(v);
	}

	public static function main() {	
		var d = getDynamic();
		passDynamic(d);
	}
}
