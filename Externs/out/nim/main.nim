# Generated by Haxe 4.0.0-rc.2+175840a
# Hail to Mighty CRAXE!!!

{.experimental: "codeReordering".}

import nimboot
import md5

type 
    ExternTest = ref object of RootObj

    ExternTestStatic = ref object of RootObj

let ExternTestStaticInst = ExternTestStatic()

proc main(this:ExternTestStatic) : void =
    var data = md5.toMD5("Hello world")
    var bytes = StaticArrayHelper.toBytes(data)
    LogStaticInst.trace(bytes.toString(), "src/ExternTest.hx", 7, "ExternTest", "main")

proc `$`(this:ExternTest) : string {.inline.} = 
    result = "ExternTest" & $this[]

ExternTestStaticInst.main()