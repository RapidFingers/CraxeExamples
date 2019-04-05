class MyData {
	public var data:String;

	public function new(data:String) {
		this.data = data;
	}
}

enum DataType {
	TInteger(v:Int);
	TDouble(v:Float);
	TString(v:String);
	TMyData(v:MyData);
}

class SwitchTest {
	public static function main() {
		// Test ADT switch

		var enums = new Array<DataType>();
		enums.push(TInteger(1));
		enums.push(TMyData(new MyData("Hello!")));

		for (s in enums) {
			switch (s) {
				case TInteger(v):
					trace(v);
				case TDouble(v):
					trace(v);
				case TString(v):
				case TMyData(v):
					trace(v.data);
			}
		}

		// Test Int switch
		var s = 33;
		switch s {
			case 33:
				trace("GOOD");
			case 44:
				trace("NOT GOOD");
		}
	}
}
