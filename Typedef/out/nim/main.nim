# Generated by Haxe 4.0.0-rc.2+77068e10c
# Hail to Mighty CRAXE!!!

{.experimental: "codeReordering".}

import nimboot

type 
    User = ref object of RootObj
        email:string
        id:int
        name:string

    OtherUser = ref object of RootObj
        id:int
        name:string

    Admin = ref object of RootObj
        email:string
        id:int
        level:int
        name:string

    SomeProc = proc():string
    SomeInt = int
    SomeUser = ClassUser

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

proc getUser(this:TypedefTestStatic) : User =
    User(email:"superman@gmail.com", id:44, name:"Superman")

proc main(this:TypedefTestStatic) : void =
    var admin = User(id:33, name:"Batman", email:"batman@batman.com")
    var arr = newHaxeArray[tuple[obj:RootRef, id:ptr int]]()
    discard arr.push((
        obj: admin,
        id: addr admin.id
    ))
    var user = TypedefTestStaticInst.getUser()
    discard arr.push((
        obj: user,
        id: addr user.id
    ))
    var clsUser = newClassUser(44, "Superman", "super@gmail.com")
    discard arr.push(clsUser)
    var obj = arr[0]
    LogStaticInst.trace(obj.email, Anon2070139270(className:"TypedefTest", fileName:"src/TypedefTest.hx", lineNumber:58, methodName:"main"))
    obj.email = "shit"
    LogStaticInst.trace(user.email, Anon2070139270(className:"TypedefTest", fileName:"src/TypedefTest.hx", lineNumber:60, methodName:"main"))

proc `$`(this:TypedefTest) : string {.inline.} = 
    result = "TypedefTest" & $this[]

TypedefTestStaticInst.main()