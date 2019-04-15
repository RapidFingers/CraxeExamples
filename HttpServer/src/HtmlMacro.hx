class HtmlMacro {
	public static macro function html(expr) {
		return switch expr.expr {
			case EMeta({name: ":markup"}, {expr: EConst(CString(s))}):								
				macro $v{s};
			case _:
				throw new haxe.macro.Expr.Error("not an xml literal", expr.pos);
		}
	}
}
