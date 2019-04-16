# TESTS

{.experimental: "codeReordering".}

import nimboot

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

proc main(this:TypedefTestStatic) : void =
    var arr = newHaxeArray[tuple[
        id: ptr int,
        name: ptr string,
        email: ptr string
    ]]()
    var clsUser = newClassUser(44, """Superman""", """super@gmail.com""")
    discard arr.push(
        (
            id: addr clsUser.id,
            name: addr clsUser.name,
            email: addr clsUser.email
        )
    )
    var obj = arr[0]
    LogStaticInst.trace(obj.email[], """src/TypedefTest.hx""", 39, """TypedefTest""", """main""")

proc `$`(this:TypedefTest) : string {.inline.} = 
    result = "TypedefTest" & $this[]

TypedefTestStaticInst.main()