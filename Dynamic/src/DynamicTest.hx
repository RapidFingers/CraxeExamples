class User {
	public var id:String;

	public function new() {
		this.id = "UserID";
	}
}

class DynamicTest {
	static function getDynamic():Dynamic  {
		return "Hello";
	}

	static function passDynamic(d:String) {
		trace(d);
	}

	public static function main() {	
		var d = getDynamic();
		passDynamic(d);
	}
}
