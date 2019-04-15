# Brainfuck benchmark for different haxe targets

## About

It uses brainfuck implementation from https://github.com/kostya/benchmarks/blob/master/brainfuck2/bf.cs ported to Haxe

It's not accurate benchmark. Don't throw stones in me for that :)
- There is no hl-native target, cause i am getting errors when compiling to native code and i dont know how to fix it right now.
- There is no .net core bench, i need to investigate how to compile it.
- There is no python, php and lua target. I think they will be too slow and no need to bench them.

## Results

| N | Tagret    | Time, s | Memory, Mb |
|---|-----------|---------|------------|
| 1 | nim-raw*  | 2.26    | 1.81       |
| 2 | nim-craxe | 2.85    | 0.68       |
| 3 | java      | 4.34    | 40.3       |
| 4 | hxcpp     | 4.68    | 2.71       |
| 5 | nodejs    | 6.5     | 30.7       |
| 6 | mono .net | 11.11   | 15.57      |
| 7 | hl-jit    | 13.82   | 3.09       |

`*` - native nim implementation is taken from https://github.com/kostya/benchmarks/blob/master/brainfuck2/bf.nim

## Platform info

Haxe Compiler 4.0.0-rc.2+175840a - (C)2005-2019 Haxe Foundation

Nim Compiler Version 0.19.4 [Linux: amd64]
Compiled at 2019-02-01

Mono JIT compiler version 5.18.1.0 (tarball Fri Mar 15 20:45:47 UTC 2019)

java 10.0.2 2018-07-17
Java(TM) SE Runtime Environment 18.3 (build 10.0.2+13)
Java HotSpot(TM) 64-Bit Server VM 18.3 (build 10.0.2+13, mixed mode)

HL/JIT 1.9.0 (c)2015-2018 Haxe Foundation

Nodejs v10.15.1

CPU: Intel(R) Core(TM) i3-2120 CPU @ 3.30GHz
