# Generated by Haxe 4.0.0-rc.2+77068e10c
# Hail to Mighty CRAXE!!!

{.experimental: "codeReordering".}

import nimboot

type 
    User = ref object of HaxeObject
        id : int
        name : string

    GameUser = ref object of User
        scores : int

    OnlineGameUser = ref object of GameUser
        room : int

    Inheritance = ref object of HaxeObject

    InheritanceStatic = object of HaxeObject


let InheritanceStaticInst = InheritanceStatic()

proc initUser(this:User, id:int, name:string) {.inline.} =
    this.id = id
    this.name = name

proc newUser(id:int, name:string) : User {.inline.} =
    result = User()
    initUser(result, id, name)

proc getKey(this:User) : string =
    return "" + $(this.id) + "_" + this.name

proc `$`(this:User) : string {.inline.} = 
    result = "User" & $this[]

proc initGameUser(this:GameUser, id:int, name:string, scores:int) {.inline.} =
    initUser(this, id, name)
    this.scores = scores

proc newGameUser(id:int, name:string, scores:int) : GameUser {.inline.} =
    result = GameUser()
    initGameUser(result, id, name, scores)

proc getKey(this:GameUser) : string =
    var key = cast[User](this).getKey()
    return "" + key + "_" + this.scores

proc incScore(this:GameUser, v:int) : int =
    return bpOperator(this.scores)

proc `$`(this:GameUser) : string {.inline.} = 
    result = "GameUser" & $this[]

proc initOnlineGameUser(this:OnlineGameUser, id:int, name:string, scores:int, room:int) {.inline.} =
    initGameUser(this, id, name, scores)
    this.room = room

proc newOnlineGameUser(id:int, name:string, scores:int, room:int) : OnlineGameUser {.inline.} =
    result = OnlineGameUser()
    initOnlineGameUser(result, id, name, scores, room)

proc getKey(this:OnlineGameUser) : string =
    var key = cast[GameUser](this).getKey()
    return "" + key + "_" + this.room

proc leaveRoom(this:OnlineGameUser) : void =
    LogStaticInst.trace("Room " + this.room + " leaved", "src/Inheritance.hx", 47, "OnlineGameUser", "leaveRoom")

proc `$`(this:OnlineGameUser) : string {.inline.} = 
    result = "OnlineGameUser" & $this[]

proc main(this:InheritanceStatic) : void =
    var user = newOnlineGameUser(1, "Bamtan", 100, 33)
    var key = user.getKey()
    LogStaticInst.trace(key, "src/Inheritance.hx", 55, "Inheritance", "main")
    var scores = user.incScore(1)
    LogStaticInst.trace(scores, "src/Inheritance.hx", 57, "Inheritance", "main")
    user.leaveRoom()

proc `$`(this:Inheritance) : string {.inline.} = 
    result = "Inheritance" & $this[]

InheritanceStaticInst.main()