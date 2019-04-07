## Benchmark for craxe

# About

It uses brainfuck implementation from https://github.com/kostya/benchmarks/blob/master/brainfuck2/bf.cs ported to Haxe

It's not accurate benchmark. Don't throw stones in me for that :)
- There is no hl-native target, cause i am getting errors when compiling to native code and i dont know how to fix it right now.
- There is no .net core bench, i need to investigate how to compile it.
- There is no python and php target. I think they will be too slow and no need to bench them.

# Results

- nim-raw: time: 2.26s memory: 1.81Mb
- nim-craxe: time: 2.85s memory: 0.68Mb
- hxcpp: time: 4.68s memory: 2.71Mb
- java: time: 4.34s memory: 40.3Mb
- nodejs: time: 6.5s memory: 30.7Mb
- mono .net: time: 11.11s memory: 15.57Mb
- hashlink-jit: time: 13.82s memory: 3.09Mb

# Platform info

Nim Compiler Version 0.19.4 [Linux: amd64]
Compiled at 2019-02-01

Mono JIT compiler version 5.18.1.0 (tarball Fri Mar 15 20:45:47 UTC 2019)

java 10.0.2 2018-07-17
Java(TM) SE Runtime Environment 18.3 (build 10.0.2+13)
Java HotSpot(TM) 64-Bit Server VM 18.3 (build 10.0.2+13, mixed mode)

HL/JIT 1.9.0 (c)2015-2018 Haxe Foundation

Nodejs v10.15.1

CPU: Intel(R) Core(TM) i3-2120 CPU @ 3.30GHz