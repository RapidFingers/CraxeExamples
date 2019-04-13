import haxe.io.Path;
import sys.FileSystem;
import sys.io.Process;

class Build_all {
    public static final BUILD_NIM = "build_nim.hxml";

    function build(path:String) {
        trace('Build: ${path}');
        Sys.setCwd(path);
        var proc = new Process("haxe", [BUILD_NIM]);
		proc.exitCode(true);        
        var errs = proc.stderr.readAll().toString();
        if (errs.length < 1) {
            trace("DONE");
        } else {
            trace("ERROR");
            trace(errs);
        }
        Sys.setCwd("..");
    }

    public function new() {
        var files = FileSystem.readDirectory(".");
        for (dir in files) {
            if (FileSystem.isDirectory(dir)) {
                var path = Path.join([".", dir, BUILD_NIM]);
                if (FileSystem.exists(path)) {
                    build(dir);
                }
            }
        }
    }
}