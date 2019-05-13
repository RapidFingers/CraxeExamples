import haxe.Json;

class JsonTest {	
	public static function main() {
		var userStr = Json.stringify({
			"id": 3212,
			"name": "Nandor",
			"email": "nandor@gmail.com"
		});

		var data = Json.parse(userStr);
		trace(data);
	}
}
