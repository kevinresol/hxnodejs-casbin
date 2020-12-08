package casbin;

@:jsRequire("casbin", "Assertion") extern class Assertion {
	/**
		constructor is the constructor for Assertion.
	**/
	function new();
	var key : String;
	var value : String;
	var tokens : Array<String>;
	var policy : Array<Array<String>>;
	var rm : RoleManager;
	function buildIncrementalRoleLinks(rm:RoleManager, op:PolicyOp, rules:Array<Array<String>>):js.lib.Promise<Void>;
	function buildRoleLinks(rm:RoleManager):js.lib.Promise<Void>;
	static var prototype : Assertion;
}