# Generated by Haxe 4.0.0-rc.2+175840a
# coding: utf-8



class _hx_AnonObject:
    def __init__(self, fields):
        self.__dict__ = fields
    def __repr__(self):
        return repr(self.__dict__)


class TypedefTest:
    __slots__ = ()

    @staticmethod
    def main():
        user = _hx_AnonObject({'id': 33, 'name': "Batman", 'email': "batman@batman.com"})
        arr = list()
        arr.append(user)
        print(str(arr))


class python_internal_MethodClosure:
    __slots__ = ("obj", "func")

    def __init__(self,obj,func):
        self.obj = obj
        self.func = func

    def __call__(self,*args):
        return self.func(self.obj,*args)




TypedefTest.main()
