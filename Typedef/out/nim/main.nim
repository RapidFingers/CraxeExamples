type 
    ClassUser = ref object of RootObj
        id : int
        name : string
        email : string

    TypedefTest = ref object of RootObj

    TypedefTestStatic = object of RootObj


let TypedefTestStaticInst = TypedefTestStatic()

proc initClassUser(this:ClassUser, id:int, name:string, email:string) {.inline.} =
    this.id = id
    this.name = name
    this.email = email

proc newClassUser(id:int, name:string, email:string) : ClassUser {.inline.} =
    result = ClassUser()
    initClassUser(result, id, name, email)

proc `$`(this:ClassUser) : string {.inline.} = 
    result = "ClassUser" & $this[]

proc traceArray(this:TypedefTestStatic, arr:HaxeArray[Anon1701240139Anon]) : void =
    var locg = 0
    while locg < arr.length:
        var it = arr[locg]
        bpOperator(locg)
        LogStaticInst.trace(it.name[], "src/TypedefTest.hx", 22, "TypedefTest", "traceArray")


proc getArray(this:TypedefTestStatic, size:int) : HaxeArray[Anon1701240139Anon] =
    var arr = newHaxeArray[Anon1701240139Anon]()
    var locg = 0
    var locg1 = size
    while locg < locg1:
        var i = apOperator(locg)
        discard arr.push(toAnon1701240139Anon(Anon1701240139(email: $(i) + "batman@gmail.com", id: i, name: $(i) + "batman")))

    return arr

proc main(this:TypedefTestStatic) : void =
    var arr = TypedefTestStaticInst.getArray(100)
    var s = arr[10]
    LogStaticInst.trace(s.id[], "src/TypedefTest.hx", 42, "TypedefTest", "main")
    LogStaticInst.trace(arr.length, "src/TypedefTest.hx", 44, "TypedefTest", "main")

proc `$`(this:TypedefTest) : string {.inline.} = 
    result = "TypedefTest" & $this[]

TypedefTestStaticInst.main()