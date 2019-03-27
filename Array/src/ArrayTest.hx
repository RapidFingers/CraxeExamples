class MyType {
	public var id:Int;
	public var name:String;

	public function new(id:Int, name:String) {
		this.id = id;
		this.name = name;
	}

	public function say() {
		trace('id: ${id} name: ${name}');
	}
}

class ArrayTest {
	public static function main() {
		var arr = new Array<MyType>();
		arr.push(new MyType(1, "Batman"));
		arr.push(new MyType(2, "Superman"));
		
		for (it in arr) {
			it.say();
		}

		var arr = [new MyType(1, "Batman"), new MyType(3, "Superman")];
		trace(arr);

		var arr = [1,2,3,4,5];
		trace(arr);
	}
}
