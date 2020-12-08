package casbin.lib.cjs.internalenforcer;

/**
	InternalEnforcer = CoreEnforcer + Internal API.
**/
@:jsRequire("casbin/lib/cjs/internalEnforcer", "InternalEnforcer") extern class InternalEnforcer extends casbin.lib.cjs.coreenforcer.CoreEnforcer {
	function new();
	/**
		addPolicyInternal adds a rule to the current policy.
	**/
	function addPolicyInternal(sec:String, ptype:String, rule:Array<String>):js.lib.Promise<Bool>;
	function addPoliciesInternal(sec:String, ptype:String, rules:Array<Array<String>>):js.lib.Promise<Bool>;
	/**
		removePolicyInternal removes a rule from the current policy.
	**/
	function removePolicyInternal(sec:String, ptype:String, rule:Array<String>):js.lib.Promise<Bool>;
	function removePoliciesInternal(sec:String, ptype:String, rules:Array<Array<String>>):js.lib.Promise<Bool>;
	/**
		removeFilteredPolicyInternal removes rules based on field filters from the current policy.
	**/
	function removeFilteredPolicyInternal(sec:String, ptype:String, fieldIndex:Float, fieldValues:Array<String>):js.lib.Promise<Bool>;
	static var prototype : InternalEnforcer;
}