// Generated by Haxe 4.0.0-rc.2+77068e10c
#include <hxcpp.h>

#ifndef INCLUDED_BrainFuck
#include <BrainFuck.h>
#endif
#ifndef INCLUDED_Program
#include <Program.h>
#endif
#ifndef INCLUDED_sys_io_File
#include <sys/io/File.h>
#endif

HX_LOCAL_STACK_FRAME(_hx_pos_d3b0a3e41b86058a_96_main,"BrainFuck","main",0x18fbb8da,"BrainFuck.main","BrainFuck.hx",96,0xb976c171)

void BrainFuck_obj::__construct() { }

Dynamic BrainFuck_obj::__CreateEmpty() { return new BrainFuck_obj; }

void *BrainFuck_obj::_hx_vtable = 0;

Dynamic BrainFuck_obj::__Create(hx::DynamicArray inArgs)
{
	hx::ObjectPtr< BrainFuck_obj > _hx_result = new BrainFuck_obj();
	_hx_result->__construct();
	return _hx_result;
}

bool BrainFuck_obj::_hx_isInstanceOf(int inClassId) {
	return inClassId==(int)0x00000001 || inClassId==(int)0x1c80a36d;
}

void BrainFuck_obj::main(){
            	HX_GC_STACKFRAME(&_hx_pos_d3b0a3e41b86058a_96_main)
HXLINE(  97)		::String text = ::sys::io::File_obj::getContent(HX_("../code.b",10,6c,17,92));
HXLINE(  98)		 ::Program program =  ::Program_obj::__alloc( HX_CTX ,text);
HXLINE(  99)		program->run();
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC0(BrainFuck_obj,main,(void))


BrainFuck_obj::BrainFuck_obj()
{
}

bool BrainFuck_obj::__GetStatic(const ::String &inName, Dynamic &outValue, hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"main") ) { outValue = main_dyn(); return true; }
	}
	return false;
}

#ifdef HXCPP_SCRIPTABLE
static hx::StorageInfo *BrainFuck_obj_sMemberStorageInfo = 0;
static hx::StaticInfo *BrainFuck_obj_sStaticStorageInfo = 0;
#endif

hx::Class BrainFuck_obj::__mClass;

static ::String BrainFuck_obj_sStaticFields[] = {
	HX_("main",39,38,56,48),
	::String(null())
};

void BrainFuck_obj::__register()
{
	BrainFuck_obj _hx_dummy;
	BrainFuck_obj::_hx_vtable = *(void **)&_hx_dummy;
	hx::Static(__mClass) = new hx::Class_obj();
	__mClass->mName = HX_("BrainFuck",6d,a3,80,1c);
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &BrainFuck_obj::__GetStatic;
	__mClass->mSetStaticField = &hx::Class_obj::SetNoStaticField;
	__mClass->mStatics = hx::Class_obj::dupFunctions(BrainFuck_obj_sStaticFields);
	__mClass->mMembers = hx::Class_obj::dupFunctions(0 /* sMemberFields */);
	__mClass->mCanCast = hx::TCanCast< BrainFuck_obj >;
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = BrainFuck_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = BrainFuck_obj_sStaticStorageInfo;
#endif
	hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

