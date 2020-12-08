package casbin.lib.cjs.util;

@:jsRequire("casbin/lib/cjs/util/index") @valueModuleOnly extern class Index {
	static function keyMatchFunc(args:haxe.extern.Rest<Dynamic>):Bool;
	static function keyMatch2Func(args:haxe.extern.Rest<Dynamic>):Bool;
	static function keyMatch3Func(args:haxe.extern.Rest<Dynamic>):Bool;
	static function regexMatchFunc(args:haxe.extern.Rest<Dynamic>):Bool;
	static function ipMatchFunc(args:haxe.extern.Rest<Dynamic>):Bool;
	static function generateGFunction(rm:casbin.RoleManager):Dynamic;
	static function keyMatch4Func(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		Returns true if the specified `string` matches the given glob `pattern`.
	**/
	static function globMatch(string:String, pattern:String):Bool;
	static function escapeAssertion(s:String):String;
	static function removeComments(s:String):String;
	static function arrayEquals(?a:Array<String>, ?b:Array<String>):Bool;
	static function array2DEquals(?a:Array<Array<String>>, ?b:Array<Array<String>>):Bool;
	static function arrayRemoveDuplicates(s:Array<String>):Array<String>;
	static function arrayToString(a:Array<String>):String;
	static function paramsToString(v:haxe.extern.Rest<String>):String;
	static function setEquals(a:Array<String>, b:Array<String>):Bool;
	static function readFile(path:String, ?encoding:String):Dynamic;
	static function writeFile(path:String, file:String, ?encoding:String):Dynamic;
	static function hasEval(s:String):Bool;
	static function replaceEval(s:String, rule:String):String;
	static function getEvalValue(s:String):Array<String>;
}