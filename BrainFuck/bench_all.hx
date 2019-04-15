import haxe.ds.StringMap;
import sys.thread.Thread;
import sys.io.Process;
import hxp.System;
import hxp.HXML;

typedef BenchResult = {
	var name:String;
	var time:Float;
	var memory:Float;
}

class Bench_all {
	function getBechResult(name:String, data:String):BenchResult {
		var items = data.split(", ");
		return {
			name: name,
			time: Std.parseFloat(items[0]),
			memory: Std.parseFloat(items[1])
		}
	}

	function benchHxcpp():String {
		Sys.println("Benchmark hxcpp");

		var hxml = new HXML({cp: ["src"], main: "BrainFuck", cpp: "out/cpp"});
		hxml.build();

		Sys.setCwd("out");

		System.copyFile("./code.b", "./cpp/code.b");
		var proc = new Process("../xtime.rb", ["./cpp/BrainFuck"]);
		proc.exitCode(true);
		Sys.setCwd("..");
		return proc.stderr.readAll().toString();
	}

	function benchDotnet():String {
		Sys.println("Benchmark mono .net");

		var hxml = new HXML({cp: ["src"], main: "BrainFuck", cs: "out/dotnet"});
		hxml.build();

		Sys.setCwd("out");

		System.copyFile("./code.b", "./dotnet/bin/code.b");
		var proc = new Process("../xtime.rb", ["./dotnet/bin/BrainFuck.exe"]);
		proc.exitCode(true);
		Sys.setCwd("..");
		return proc.stderr.readAll().toString();
	}

	function benchJava():String {
		Sys.println("Benchmark java");

		var hxml = new HXML({cp: ["src"], main: "BrainFuck", java: "out/java"});
		hxml.build();

		Sys.setCwd("out");

		System.copyFile("./code.b", "./java/code.b");
		var proc = new Process("../xtime.rb", ["java", "-jar", "./java/BrainFuck.jar"]);
		proc.exitCode(true);
		Sys.setCwd("..");
		return proc.stderr.readAll().toString();
	}

	function benchHashlink():String {
		Sys.println("Benchmark hashlink-jit");

		var hxml = new HXML({cp: ["src"], main: "BrainFuck", hl: "out/hl/main.hl"});
		hxml.build();

		Sys.setCwd("out");

		System.copyFile("./code.b", "./hl/code.b");
		var proc = new Process("../xtime.rb", ["hl", "./hl/main.hl"]);
		proc.exitCode(true);
		Sys.setCwd("..");
		return proc.stderr.readAll().toString();
	}

	function benchNodejs():String {
		Sys.println("Benchmark nodejs");

		var hxml = new HXML({
			cp: ["src"],
			main: "BrainFuck",
			js: "out/js/main.js",
			libs: ["hxnodejs"]
		});
		hxml.build();

		Sys.setCwd("out");

		System.copyFile("./code.b", "./js/code.b");
		var proc = new Process("../xtime.rb", ["node", "./js/main.js"]);
		proc.exitCode(true);
		Sys.setCwd("..");
		return proc.stderr.readAll().toString();
	}

	function benchCraxe():String {
		Sys.println("Benchmark craxe");

		var proc = new Process("haxe", ["build_nim.hxml"]);
		proc.exitCode(true);
		Sys.println(proc.stdout.readAll());

		Sys.setCwd("out");

		System.copyFile("./code.b", "./nim-craxe/code.b");
		var proc = new Process("../xtime.rb", ["./nim-craxe/main"]);
		proc.exitCode(true);
		Sys.setCwd("..");
		return proc.stderr.readAll().toString();
	}

	function benchNimIdeal():String {
		Sys.println("Benchmark nim raw");
		Sys.setCwd("out");
		System.copyFile("./code.b", "./nim-ideal/code.b");
		var proc = new Process("nim", ["c", "-d:release", "./nim-ideal/ideal.nim"]);
		proc.exitCode(true);
		var proc = new Process("../xtime.rb", ["./nim-ideal/ideal"]);
		proc.exitCode(true);
		Sys.setCwd("..");
		return proc.stderr.readAll().toString(); 
	}

	public function new() {
		var res = new Array<BenchResult>();
		res.push(getBechResult("hxcpp", benchHxcpp()));
		res.push(getBechResult("mono .net", benchDotnet()));
		res.push(getBechResult("java", benchJava()));
		res.push(getBechResult("hashlink-jit", benchHashlink()));
		res.push(getBechResult("nodejs", benchNodejs()));
		 res.push(getBechResult("nim-craxe", benchCraxe()));
		res.push(getBechResult("nim-raw", benchNimIdeal()));

		Sys.println("");

		res.sort((b1, b2) -> {
			return Math.round(b1.time - b2.time);
		});

		for (item in res) {
			Sys.println('${item.name}: time: ${item.time}s memory: ${item.memory}Mb');
		}
	}
}
