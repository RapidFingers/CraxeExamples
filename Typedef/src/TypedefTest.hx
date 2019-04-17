typedef User = {
	var id:Int;
	var name:String;
	var email:String;
}

typedef OtherUser = {
	var id:Int;
	var name:String;
}

typedef Admin = User & {
	level:Int
}

typedef SomeProc = () -> String;
typedef SomeInt = Int;
typedef SomeUser = ClassUser;

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
	static function getUser() {
		return {
			id:44,
			name:"Superman",
			email:"superman@gmail.com"
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

		var user = getUser();
		arr.push(user);

		var clsUser = new ClassUser(44, "Superman", "super@gmail.com");
		arr.push(clsUser);

		var obj = arr[0];
		trace(obj.email);
		obj.email = "shit";
		trace(user.email);
	}
}
