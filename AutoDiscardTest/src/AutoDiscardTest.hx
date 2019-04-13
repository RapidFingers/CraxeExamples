class Test1 {
	public function new() {}

	public function call1(id:String):Test2 {
		return new Test2();
	}
}

class Test2 {
	public function new() {}

	public function call2(name:String):Test3 {
		return new Test3();
	}
}

class Test3 {
	public function new() {}

	public function call3(email:String):String {
		return "GOOD";
	}

	public function call4():Void {
		trace("Hello");
	}
}

class AutoDiscardTest {	
	public static function main() {
		var tst1 = new Test1();
		tst1.call1("33").call2("Batman").call3("batman@gmail.com");
		tst1.call1("44").call2("Superman").call4();
	}
}
