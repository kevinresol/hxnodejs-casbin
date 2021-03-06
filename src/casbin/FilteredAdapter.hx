package casbin;

typedef FilteredAdapter = {
	function loadFilteredPolicy(model:Model, filter:Dynamic):js.lib.Promise<Void>;
	function isFiltered():Bool;
	function loadPolicy(model:Model):js.lib.Promise<Void>;
	function savePolicy(model:Model):js.lib.Promise<Bool>;
	function addPolicy(sec:String, ptype:String, rule:Array<String>):js.lib.Promise<Void>;
	function removePolicy(sec:String, ptype:String, rule:Array<String>):js.lib.Promise<Void>;
	function removeFilteredPolicy(sec:String, ptype:String, fieldIndex:Float, fieldValues:haxe.extern.Rest<String>):js.lib.Promise<Void>;
};