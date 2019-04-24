# Generated by Haxe 4.0.0-rc.2+77068e10c
# Hail to Mighty CRAXE!!!

{.experimental: "codeReordering".}

import nimboot

type 
    UserTypeAbstr = string
    DBLevelAbstr = int
    EnumAbstract = ref object of RootObj

    EnumAbstractStatic = object of RootObj


let EnumAbstractStaticInst = EnumAbstractStatic()

proc printUserTypeAbstr(this1:UserTypeAbstr) : void =
    LogStaticInst.trace("enum_" + this1, "src/EnumAbstract.hx", 7, "_EnumAbstract.UserType_Impl_", "print")

proc getAdminUserTypeAbstr() : UserTypeAbstr =
    return "admin"

proc getLevel(this:EnumAbstractStatic, v:UserTypeAbstr) : DBLevelAbstr =
    if v == "admin":
        return 1
    if v == "superadmin":
        return 1
    elif v == "user":
        return 0

proc main(this:EnumAbstractStatic) : void =
    var user = getAdminUserTypeAbstr()
    var level = EnumAbstractStaticInst.getLevel(user)
    printUserTypeAbstr(user)
    LogStaticInst.trace(level, "src/EnumAbstract.hx", 34, "EnumAbstract", "main")

proc `$`(this:EnumAbstract) : string {.inline.} = 
    result = "EnumAbstract" & $this[]

EnumAbstractStaticInst.main()