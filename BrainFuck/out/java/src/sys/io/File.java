// Generated by Haxe 4.0.0-rc.2+175840a
package sys.io;

import haxe.root.*;

@SuppressWarnings(value={"rawtypes", "unchecked"})
public class File extends haxe.lang.HxObject
{
	public File(haxe.lang.EmptyObject empty)
	{
	}
	
	
	public File()
	{
		//line 25 "/home/grabli66/haxe/std/java/_std/sys/io/File.hx"
		sys.io.File.__hx_ctor_sys_io_File(this);
	}
	
	
	protected static void __hx_ctor_sys_io_File(sys.io.File __hx_this)
	{
	}
	
	
	public static java.lang.String getContent(java.lang.String path)
	{
		//line 29 "/home/grabli66/haxe/std/java/_std/sys/io/File.hx"
		sys.io.FileInput f = sys.io.File.read(path, false);
		//line 30 "/home/grabli66/haxe/std/java/_std/sys/io/File.hx"
		java.lang.String ret = f.readAll(null).toString();
		//line 31 "/home/grabli66/haxe/std/java/_std/sys/io/File.hx"
		f.close();
		//line 32 "/home/grabli66/haxe/std/java/_std/sys/io/File.hx"
		return ret;
	}
	
	
	public static sys.io.FileInput read(java.lang.String path, java.lang.Object binary)
	{
		//line 59 "/home/grabli66/haxe/std/java/_std/sys/io/File.hx"
		boolean binary1 = ( (haxe.lang.Runtime.eq(binary, null)) ? (true) : (haxe.lang.Runtime.toBool(((java.lang.Boolean) (binary) ))) );
		//line 61 "/home/grabli66/haxe/std/java/_std/sys/io/File.hx"
		try 
		{
			//line 61 "/home/grabli66/haxe/std/java/_std/sys/io/File.hx"
			return new sys.io.FileInput(((java.io.RandomAccessFile) (new java.io.RandomAccessFile(((java.io.File) (new java.io.File(haxe.lang.Runtime.toString(path))) ), haxe.lang.Runtime.toString("r"))) ));
		}
		catch (java.lang.Throwable catchallException)
		{
			//line 59 "/home/grabli66/haxe/std/java/_std/sys/io/File.hx"
			haxe.lang.Exceptions.setException(catchallException);
			//line 65 "/home/grabli66/haxe/std/java/_std/sys/io/File.hx"
			java.lang.Object e = ( (( catchallException instanceof haxe.lang.HaxeException )) ? (((haxe.lang.HaxeException) (catchallException) ).obj) : (catchallException) );
			//line 65 "/home/grabli66/haxe/std/java/_std/sys/io/File.hx"
			throw haxe.lang.HaxeException.wrap(e);
		}
		
		
	}
	
	
}

