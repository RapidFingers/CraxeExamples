#!/usr/bin/env bash

haxe build_cpp.hxml
haxe build_dotnet.hxml
# haxe build_hl.hxml
# haxe build_java.hxml
# haxe build_js.hxml
# haxe build_nim.hxml
# nim c -d:release out/nim-ideal/ideal.nim
cd out

# echo
# echo === hxcpp ===
# echo

# cp cpp/BrainFuck .
# ../xtime.rb ./BrainFuck
# rm BrainFuck

echo
echo === .net mono ===
echo
cp dotnet/bin/BrainFuck.exe .
DOTNET=$(../xtime.rb ./BrainFuck.exe | tr r " ")
rm BrainFuck.exe

echo $DOTNET
cd ..
