typedef User = {
	var id:Int;
	var name:String;
	var email:String;
}

typedef Admin = User & {
	level:Int
}

class TypedefTest {
	public static function main() {
		var user:Admin = {
			id: 33,
			name: "Batman",
			email: "batman@batman.com",
			level: 1
		}

		var arr = new Array<{ id:Int, name:String, email:String }>();
		arr.push(user);

		trace(arr);
	}
}
