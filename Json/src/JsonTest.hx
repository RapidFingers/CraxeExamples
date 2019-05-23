import haxe.Json;

class JsonTest {
	public static function main() {
		var userStr = Json.stringify({
			"id": 1234,
			"name": "Nandor",
			"email": "nandor@gmail.com"
		});

		trace(userStr);
		var data = Json.parse(userStr);
		trace(data.email);
	}
}
