abstract SimpleInt(Int) from Int to Int {}

abstract Dollar(Int) {
	public function new(v:Int) {
		if (v == 33) {
			this = 44;
		} else {
			this = v;
		}
	}

	public function test(this1:String):Int {
		return this + this1.length;
	}
}

class User {
	public var id:Int;
	public var name:String;

	public function new() {		
		id = 33;
	}
}

abstract SomeUser(User) {
	public function new(u:User) { 
		this = u;
	}

	public function test() {
		trace(this.id);
	}

	@:from public static function from(i:Int) {
		var u = new User();
		u.id = i;
		u.name = "Batman";
		return new SomeUser(u);
	}

	@:to public function to():Int {
		return this.id;
	}
}

class AbstractTest {
	public static function main() {
		var a:SimpleInt = 33;
		trace(a);

		var dol:Dollar = new Dollar(22);
		trace(dol.test("GOOD"));

		var d:SomeUser = 44;
		d.test();
		var i:Int = d;
		trace(i);
	}
}
