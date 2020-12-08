package casbin;

/**
	StringAdapter is the string adapter for Casbin.
	It can load policy from a string.
**/
@:jsRequire("casbin", "StringAdapter") extern class StringAdapter {
	/**
		StringAdapter is the constructor for StringAdapter.
	**/
	function new(policy:String);
	final policy : String;
	function loadPolicy(model:Model):js.lib.Promise<Void>;
	private var loadRules : Dynamic;
	/**
		savePolicy saves all policy rules to the storage.
	**/
	function savePolicy(model:Model):js.lib.Promise<Bool>;
	/**
		addPolicy adds a policy rule to the storage.
	**/
	function addPolicy(sec:String, ptype:String, rule:Array<String>):js.lib.Promise<Void>;
	/**
		removePolicy removes a policy rule from the storage.
	**/
	function removePolicy(sec:String, ptype:String, rule:Array<String>):js.lib.Promise<Void>;
	/**
		removeFilteredPolicy removes policy rules that match the filter from the storage.
	**/
	function removeFilteredPolicy(sec:String, ptype:String, fieldIndex:Float, fieldValues:haxe.extern.Rest<String>):js.lib.Promise<Void>;
	static var prototype : StringAdapter;
}