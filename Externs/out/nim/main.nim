# Generated by Haxe 4.0.0-rc.2+175840a
# Hail to Mighty CRAXE!!!

{.experimental: "codeReordering".}

import nimboot
import md5
import asyncnet
import asyncdispatch

type 
    ExternTest = ref object of RootObj

    ExternTestStatic = ref object of RootObj


let ExternTestStaticInst = ExternTestStatic()

proc testPassValue(this:ExternTestStatic, v:var MD5Digest) : void =
    LogStaticInst.trace(v, "src/ExternTest.hx", 7, "ExternTest", "testPassValue")

proc main(this:ExternTestStatic) : void =
    var sock = newAsyncSocket()
    sock.bindAddr(Port(26301))
    sock.listen()
    sock.accept().handle()

proc `$`(this:ExternTest) : string {.inline.} = 
    result = "ExternTest" & $this[]

ExternTestStaticInst.main()