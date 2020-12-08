package casbin;

typedef BatchAdapter = {
	function addPolicies(sec:String, ptype:String, rules:Array<Array<String>>):js.lib.Promise<Void>;
	function removePolicies(sec:String, ptype:String, rules:Array<Array<String>>):js.lib.Promise<Void>;
	function loadPolicy(model:Model):js.lib.Promise<Void>;
	function savePolicy(model:Model):js.lib.Promise<Bool>;
	function addPolicy(sec:String, ptype:String, rule:Array<String>):js.lib.Promise<Void>;
	function removePolicy(sec:String, ptype:String, rule:Array<String>):js.lib.Promise<Void>;
	function removeFilteredPolicy(sec:String, ptype:String, fieldIndex:Float, fieldValues:haxe.extern.Rest<String>):js.lib.Promise<Void>;
};