import haxe.Json;

class JsonTest {
	public static function main() {
		var userStr = Json.stringify({
			"id": 1234,
			"name": "Nandor",
			"email": "nandor@gmail.com"
		});

		var data = Json.parse(userStr);
		trace(data);
	}
}
