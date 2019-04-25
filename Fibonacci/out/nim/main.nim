# Generated by Haxe 4.0.0-rc.2+175840a
# Hail to Mighty CRAXE!!!

{.experimental: "codeReordering".}

import nimboot

type 
    Fibonacci = ref object of RootObj

    FibonacciStatic = object of RootObj


let FibonacciStaticInst = FibonacciStatic()

proc fib(this:FibonacciStatic, n:int) : int =
    if n <= 2:
        return 1
    return FibonacciStaticInst.fib(n - 1) + FibonacciStaticInst.fib(n - 2)

proc main(this:FibonacciStatic) : void =
    LogStaticInst.trace(FibonacciStaticInst.fib(50), "src/Fibonacci.hx", 11, "Fibonacci", "main")

proc `$`(this:Fibonacci) : string {.inline.} = 
    result = "Fibonacci" & $this[]

FibonacciStaticInst.main()