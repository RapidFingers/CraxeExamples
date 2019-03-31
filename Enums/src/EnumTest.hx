enum MyValue {
	None;
	Int(v:Int);
	Float(v:Float);
	Some(v:Int, s:String, arg:Array<Int>);
	Rec(v:MyValue);
}

class EnumTest {
	public static function main() {
		// var value1 = MyValue.Int(33);
		// trace(value1);		

		// var value2 = MyValue.Float(33);
		// trace(value2);

		// var value3 = MyValue.Int(33);
		// trace(value1 == value3);

		// var arr = [Int(3), Float(4), None, Some(1, "Good", [1,2,3])];
		// trace(arr);

		var res = new Array<MyValue>();
		for (i in 0...1000000) {
			res.push(Rec(Float(33)));
		}

		trace(res.length);		
	}
}
