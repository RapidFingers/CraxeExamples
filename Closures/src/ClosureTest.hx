class User {
	public final name:String;
	public final email:String;

	public function new(name:String, email:String) {
		this.name = name;
		this.email = email;
	}

	public function createAction():(id:String)->Void {	
		return (id)-> {
			trace('${name}_${email}_${id}');
		};
	}
}

class ClosureTest {	
	static function test(v:(id:Int)->String):String {
		var res = v(33);
		return 'Result: ${res}';
	}

	public static function main() {
		var user = new User("Batman", "batman@gmail.com");
		var action = user.createAction();
		action("33");
		var res = test((id) -> {
			return '${user.name}_${user.email}';
		});

		trace(res);
	}
}
