// typedef User = {
// 	var id:Int;
// 	var name:String;
// 	var email:String;
// }

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
	static function traceArray(arr:Array<{id:Int, name:String, email:String}>) {
		for (it in arr) {
			trace(it.name);
		}
	}

	static function getArray(size:Int):Array<{id:Int, name:String, email:String}> {
		var arr = new Array<{id:Int, name:String, email:String}>();
		for (i in 0...size) {
			arr.push({
				id: i,
				name: Std.string(i) + "batman",
				email: Std.string(i) + "batman@gmail.com"
			});
		}
		return arr;
	}

	public static function main() {		
		var arr = getArray(100);

		var s = arr[10];
		trace(s.id);

		trace(arr.length);
	}
}
