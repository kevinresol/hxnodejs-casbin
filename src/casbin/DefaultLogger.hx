package casbin;

@:jsRequire("casbin", "DefaultLogger") extern class DefaultLogger {
	function new();
	private var enable : Dynamic;
	function enableLog(enable:Bool):Void;
	function isEnable():Bool;
	function print(v:haxe.extern.Rest<Dynamic>):Void;
	function printf(format:String, v:haxe.extern.Rest<Dynamic>):Void;
	static var prototype : DefaultLogger;
}