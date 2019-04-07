import sys.io.File;
import haxe.io.Bytes;

enum Operation {
	Inc(v:Int);
	Move(v:Int);
	Print;
	Loop(v:Array<Operation>);
}

class Tape {
	var pos:Int;
	var tape:Bytes;

	public function new() {
		pos = 0;
		tape = Bytes.alloc(30000);
	}

	public inline function get():Int {
		return tape.get(pos);
	}

	public inline function inc(x:Int) {
		var b = tape.get(pos);
		b += x;
		tape.set(pos, b);
	}

	public inline function move(x:Int) {
		pos += x;
		while (pos >= tape.length) {
			tape = Bytes.alloc(tape.length * 2);
		}
	}
}

class Program {
	final text:String;
	var ops:Array<Operation>;
	var pos:Int;

	function parse():Array<Operation> {
		var res = new Array<Operation>();
		while (pos < text.length) {
			var c = text.charAt(pos);
			pos += 1;
			switch c {
				case '+':
					res.push(Inc(1));
				case '-':
					res.push(Inc(-1));
				case '>':
					res.push(Move(1));
				case '<':
					res.push(Move(-1));
				case '.':
					res.push(Print);
				case '[':
					res.push(Loop(parse()));
				case ']':
					return res;
			}
		}
		return res;
	}

	function runInternal(operations:Array<Operation>, tape:Tape) {
		for (op in operations) {
			switch op {
				case Inc(v):
					tape.inc(v);
				case Move(v):
					tape.move(v);
				case Loop(v):
					while (tape.get() > 0)
						runInternal(v, tape);
				case Print:
					trace(tape.get());
			}
		}
	}

	public function new(text:String) {
		pos = 0;
		this.text = text;
		ops = parse();
	}

	public function run() {
		runInternal(ops, new Tape());
	}
}

class BrainFuck {
	public static function main() {
		var text = File.getContent("code.b");
		var program = new Program(text);
		program.run();
	}
}
