// Generated by Haxe 4.0.0-rc.2+77068e10c
#include <hxcpp.h>

#ifndef INCLUDED_Operation
#include <Operation.h>
#endif
#ifndef INCLUDED_haxe_Log
#include <haxe/Log.h>
#endif
#ifndef INCLUDED_sys_io_File
#include <sys/io/File.h>
#endif
#ifndef INCLUDED_haxe_io_Bytes
#include <haxe/io/Bytes.h>
#endif
#ifndef INCLUDED_Std
#include <Std.h>
#endif
#ifndef INCLUDED_BrainFuck
#include <BrainFuck.h>
#endif
#ifndef INCLUDED_Program
#include <Program.h>
#endif
#ifndef INCLUDED_Tape
#include <Tape.h>
#endif

void __files__boot();

void __boot_all()
{
__files__boot();
hx::RegisterResources( hx::GetResources() );
::Operation_obj::__register();
::haxe::Log_obj::__register();
::sys::io::File_obj::__register();
::haxe::io::Bytes_obj::__register();
::Std_obj::__register();
::BrainFuck_obj::__register();
::Program_obj::__register();
::Tape_obj::__register();
::Operation_obj::__boot();
::haxe::Log_obj::__boot();
}

