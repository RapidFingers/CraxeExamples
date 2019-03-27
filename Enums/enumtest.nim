type
    Enum = object of RootObj
        tag:string
        index:int
    
    MyValueInt = object of Enum
        par1:int
    
    MyValueFloat = object of Enum
        par1:float

proc newMyValueInt(v:int) : MyValueInt =
    result.tag = "MyValueInt"
    result.index = 0
    result.par1 = v

proc newMyValueFloat(v:float) : MyValueFloat =
    result.tag = "MyValueFloat"
    result.index = 1
    result.par1 = v

let d = newMyValueInt(3)
echo d
