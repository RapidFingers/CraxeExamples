type
    User = ref object of RootObj
        id:int
        name:string

    UserAnon = object
        obj:ref RootObj
        id:ptr int
        name:ptr string

template toUserAnon(this:User):UserAnon =
    UserAnon(obj:this, id:addr this.id, name:addr this.name)

proc getUser():UserAnon =
    return User(id:33, name:"batman").toUserAnon()

proc testProc(v:UserAnon) =
    v.name[] = "superman"

var user = getUser()
testProc(user)
var sq = newSeq[UserAnon]()
sq.add(user)