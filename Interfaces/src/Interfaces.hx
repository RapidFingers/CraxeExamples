interface IUser {
	public var name:String;
	public function getKey():String;
}

class ServiceUser implements IUser {
	public var name:String;

	public function getKey():String {
		return "12345";
	}

	public function new() {}
}

class Interfaces {		
	static function processUser(user:IUser) {
		var key = user.getKey();
		trace(key);
		trace(user.name);
	}

	static public function main() {
		var user = new ServiceUser();
		processUser(user);
	}
}
