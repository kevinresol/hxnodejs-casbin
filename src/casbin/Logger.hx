package casbin;

typedef Logger = {
	function enableLog(enable:Bool):Void;
	function isEnable():Bool;
	function print(v:haxe.extern.Rest<Dynamic>):Void;
	function printf(format:String, v:haxe.extern.Rest<Dynamic>):Void;
};