typedef User = {
	var id:Int;
	var name:String;
	var email:String;
}

class TypedefTest {
	public static function main() {
		var admin:User = {
			id: 33,
			name: "Batman",
			email: "batman@batman.com"			
		}

		var arr = new Array<User>();
		arr.push(admin);

		arr.push({
			id: 11,
			name: "GOOD",
			email: "good"
		});
	}
}
