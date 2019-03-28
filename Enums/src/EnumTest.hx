enum MyValue {
	None;
	Int(v:Int);
	Float(v:Float);
	Some(v:Int, s:String, arg:Array<Int>);
}

class EnumTest {
	public static function main() {
		var value = MyValue.Int(33);
		trace(value);		

		var value = MyValue.Float(33);
		trace(value);		
	}
}
