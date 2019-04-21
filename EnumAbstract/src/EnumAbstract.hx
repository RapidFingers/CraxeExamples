enum abstract UserType(String) {
	var USER = "user";
	var ADMIN = "admin";
	var SUPERADMIN = "superadmin";

	public function print() {
		trace('enum_${this}');
	}

	public static function getAdmin():UserType {
		return ADMIN;
	}
}

enum abstract DBLevel(Int) {
	var USER = 0;
	var ADMIN = 1;
}

class EnumAbstract {
	static function	getLevel(v:UserType):DBLevel {
		switch v {
			case ADMIN | SUPERADMIN:
				return ADMIN;
			case USER:
				return USER;
		}
	}

	public static function main() {
		var user = UserType.getAdmin();
		var level = getLevel(user);
		user.print();
		trace(level);
	}
}
