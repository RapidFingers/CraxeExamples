import haxe.ds.HashMap;

class SomeKey {
	public var key:String;

	public function new(key:String) {
		this.key = key;
	}

	public function hashCode():Int {
		return key.length;
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
		trace(intmap[33]);
		trace(intmap[34]);

		var objmap = new Map<SomeKey, String>();
		objmap[new SomeKey("batman")] = "batman@gmail.com";
		objmap[new SomeKey("superman")] = "superman@gmail.com";
		var eq = objmap[new SomeKey("batman")] == objmap[new SomeKey("batman")];
		trace(eq);

		var some = objmap[new SomeKey("batman")];
		trace(some);
		if (some == "batman@gmail.com") {
			trace("EQUALS");
		} else {
			trace("NOT EQUALS");
		}

		var some = objmap[new SomeKey("bat")];
		trace(some);
		if (some == "batman@gmail.com") {
			trace("EQUALS");
		} else {
			trace("NOT EQUALS");
		}

		var map = [
			"Earth" => 33,
			"Mars" => 44,
		];

		trace(map);
	}
}
