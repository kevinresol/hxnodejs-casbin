package casbin;

@:jsRequire("casbin", "Helper") extern class Helper {
	function new();
	static var prototype : Helper;
	static function loadPolicyLine(line:String, model:Model):Void;
}