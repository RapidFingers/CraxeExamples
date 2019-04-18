typedef User = {
	var id:Int;
	var name:String;
	var email:String;
}

class ClassUser {
	public var id:Int;
	public var name:String;
	public var email:String;

	public function new(id:Int, name:String, email:String) {
		this.id = id;
		this.name = name;
		this.email = email;
	}
}

class TypedefTest {
	static function test(arr:Array<User>) {
		for (it in arr) {
			trace(it.name);
		}
	}

	public static function main() {
		var admin:User = {
			id: 33,
			name: "Batman",
			email: "batman@batman.com"
		}

		var arr = new Array<{id:Int, name:String, email:String}>();
		arr.push(admin);

		var clsUser = new ClassUser(44, "Superman", "super@gmail.com");
		arr.push(clsUser);
		
		arr.push({
			id: 11,
			name: "GOOD",
			email: "good"
		});

		test(arr);
	}
}
