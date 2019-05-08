# Benchmark of craxe http server and nodejs

## About

It's simple benchmark of two http servers. One is homemade http server, and right now it mostly uses code from https://github.com/dom96/httpbeast. Other one is well known nodejs. Both servers works on one thread, processes only http GET method request and return static plain text. Benchmark was performed on linux system with "wrk" util: wrk -t12 -c400 -d30s http://127.0.0.1:26301:users

## Results

Nodejs:

![Screenshot](https://raw.githubusercontent.com/RapidFingers/CraxeExamples/master/HttpServer/assets/nodejs.png)

Craxe http:

![Screenshot](https://raw.githubusercontent.com/RapidFingers/CraxeExamples/master/HttpServer/assets/craxehttp.png)

## Platform info

Haxe Compiler 4.0.0-rc.2+175840a - (C)2005-2019 Haxe Foundation

Nim Compiler Version 0.19.4 [Linux: amd64]
Compiled at 2019-02-01

Nodejs v10.15.1

CPU: Intel(R) Core(TM) i3-2120 CPU @ 3.30GHz
