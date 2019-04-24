class Box<T> {
	public var value:T;

	public function new(value:T) {
		this.value = value;
	}
}

class StringBox extends Box<String> {
}

class Pair<K, V> {
	public var key:K;
	public var value:V;

	public function new(key:K, value:V) {
		this.key = key;
		this.value = value;
	}
}

enum Some<T> {
	None;
	Value(v:T);
}

class GenericsTest {	
	public static function main() {
		var box = new Box<Int>(33);
		trace(box.value);

		var pair = new Pair<Box<String>, Int>(new Box("Hello"), 44);
		trace(pair.key);
		trace(pair.value);

		var stringBox = new StringBox("Batman");
		trace(stringBox);

		var arr = new Array<StringBox>();
		arr.push(new StringBox("Superman"));
		arr.push(stringBox);
		trace(arr);
		
		var none = None;
		var enumArr = new Array<Some<Pair<String, String>>>();
		enumArr.push(Value(new Pair("Batman", "batman@gmail.com")));
		enumArr.push(none);		
		trace(enumArr);
	}
}
