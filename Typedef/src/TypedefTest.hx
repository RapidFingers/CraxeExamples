typedef User = {
	var id:Int;
	var name:String;
	var email:String;
}

class TypedefTest {
	public static function main() {
		var user:User = {
			id: 33,
			name: "Batman",
			email: "batman@batman.com"
		}

		var arr = new Array<{ id:Int, name:String, email:String }>();
		arr.push(user);

		trace(arr);
	}
}
