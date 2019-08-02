typedef Some = {
	var name:String;
	function test():Int;
}

class Role {
	public final name:String;

	public function new(name:String) {
		this.name = name;
	}
}

class User {
	public final roles:Iterator<Role>;

	public final some:Some;

	public function new(roles:Array<Role>, some:Some) {
		this.roles = roles.iterator();
		this.some = some;
	}
}

class IteratorsTest {
	static function main() {
		var user = new User([new Role("Admin"), new Role("User")], {
			name: "GOOD",
			test: () -> 3
		});
		for (role in user.roles)
			trace(role.name);
	}
}
