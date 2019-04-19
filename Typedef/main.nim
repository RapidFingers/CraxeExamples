import nimboot

type 
    User = ref object of RootObj
        email:string
        id:int
        name:string

    UserAnon = ref object
        email:ptr string
        id:ptr int
        name:ptr string

template toUserAnon[T](this:T):UserAnon =
    UserAnon(email:addr this.email, id:addr this.id, name:addr this.name)

var arr = newHaxeArray[UserAnon]()
var locg = 0
for i in 0..1000000:
    discard arr.push(toUserAnon(User(email: $i + "good", id:i, name: $i + "GOOD")))

echo arr.length