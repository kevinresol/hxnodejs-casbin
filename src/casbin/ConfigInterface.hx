package casbin;

typedef ConfigInterface = {
	function getString(key:String):String;
	function getStrings(key:String):Array<String>;
	function getBool(key:String):Bool;
	function getInt(key:String):Float;
	function getFloat(key:String):Float;
	function set(key:String, value:String):Void;
};