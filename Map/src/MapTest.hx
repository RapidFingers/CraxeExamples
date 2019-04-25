import haxe.ds.HashMap;

class SomeKey {
	public var key:String;

	public function new(key:String) {
		this.key = key;
	}	

	public function hashCode():Int {
		return 33;
	}
}

class MapTest {
	public static function main() {
		var stringmap = new Map<String, String>();
		stringmap["batman"] = "batman@gmail.com";
		stringmap["superman"] = "superman@gmail.com";
		trace(stringmap);
		trace(stringmap["batman"]);

		var intmap = new Map<Int, String>();
		intmap[33] = "batman";
		intmap[44] = "superman";
		trace(intmap);

		var objmap = new Map<SomeKey, String>();
		objmap[new SomeKey("batman")] = "batman@gmail.com";
		objmap[new SomeKey("superman")] = "superman@gmail.com";
		// trace(objmap);
		var eq = objmap[new SomeKey("batman")] == objmap[new SomeKey("batman")];
		trace(eq);
	}
}
