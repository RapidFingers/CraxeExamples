# Generated by Haxe 4.0.0-rc.2+175840a
# Hail to Mighty CRAXE!!!

{.experimental: "codeReordering".}

import nimboot

type 
    SomeKey = ref object of HaxeObject
        key : string
        hash : proc():int

    MapTest = ref object of HaxeObject

    MapTestStatic = object of HaxeObject


let MapTestStaticInst = MapTestStatic()

proc initSomeKey(this:SomeKey, key:string) {.inline.} =
    this.hash = proc():int = this.hashCode()
    this.key = key

proc newSomeKey(key:string) : SomeKey {.inline.} =
    result = SomeKey()
    initSomeKey(result, key)

proc hashCode(this:SomeKey) : int =
    return this.key.length

proc `$`(this:SomeKey) : string {.inline.} = 
    result = "SomeKey" & $this[]

proc main(this:MapTestStatic) : void =
    var stringmap = newStringMap[string]()
    stringmap.set("batman", "batman@gmail.com")
    stringmap.set("superman", "superman@gmail.com")
    LogStaticInst.trace(stringmap.toString(), "src/MapTest.hx", 20, "MapTest", "main")
    LogStaticInst.trace(stringmap.get("batman"), "src/MapTest.hx", 21, "MapTest", "main")
    var intmap = newIntMap[string]()
    intmap.set(33, "batman")
    intmap.set(44, "superman")
    LogStaticInst.trace(intmap.toString(), "src/MapTest.hx", 26, "MapTest", "main")
    var objmap = newObjectMap[SomeKey, string]()
    var k = newSomeKey("batman")
    objmap.set(k, "batman@gmail.com")
    var k1 = newSomeKey("superman")
    objmap.set(k1, "superman@gmail.com")
    var eq = (block:
        var key = newSomeKey("bat")
        objmap.get(key)
    ) == (block:
        var key1 = newSomeKey("batman")
        objmap.get(key1)
    )
    LogStaticInst.trace(eq, "src/MapTest.hx", 33, "MapTest", "main")

proc `$`(this:MapTest) : string {.inline.} = 
    result = "MapTest" & $this[]

MapTestStaticInst.main()