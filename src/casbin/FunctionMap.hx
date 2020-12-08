package casbin;

@:jsRequire("casbin", "FunctionMap") extern class FunctionMap {
	/**
		constructor is the constructor for FunctionMap.
	**/
	function new();
	private var functions : Dynamic;
	function addFunction(name:String, func:MatchingFunction):Void;
	function getFunctions():Dynamic;
	static var prototype : FunctionMap;
	static function loadFunctionMap():FunctionMap;
}