class User {
	public final name:String;
	public final email:String;

	public function new(name:String, email:String) {
		this.name = name;
		this.email = email;
	}

	public function createAction(id:Int):() -> String {
		return() -> {
			return '${name}_${email}_${id}';
		};
	}
}

class ClosureTest {
	static function test(v:(id:Int) -> String):String {
		var res = v(33);
		return 'Result: ${res}';
	}

	public static function main() {
		var user = new User("Batman", "batman@gmail.com");
		var action1 = user.createAction(33);
		var action2 = user.createAction(44);
		var ares1 = action1();
		var ares2 = action2();

		var res = test((id) -> {
			return '${ares1}_${ares2}';
		});

		trace(res);
	}
}
