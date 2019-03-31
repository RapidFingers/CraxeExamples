# Generated by Haxe 4.0.0-rc.2+175840a
# Hail to Mighty CRAXE!!!

{.experimental: "codeReordering".}

import nimboot

type 
    HundredDoors = ref object of RootObj

    HundredDoorsStatic = ref object of RootObj

let HundredDoorsStaticInst = HundredDoorsStatic()

proc main(this:HundredDoorsStatic) : void =
    HundredDoorsStaticInst.findOpenLockers(100)

proc findOpenLockers(this:HundredDoorsStatic, n:int) : void =
    var i = 1
    while i * i <= n:
        LogStaticInst.trace(i * i, "src/HundredDoors.hx", 10, "HundredDoors", "findOpenLockers")
        apOperator(i)


proc `$`(this:HundredDoors) : string {.inline.} = 
    result = "HundredDoors" & $this[]

HundredDoorsStaticInst.main()