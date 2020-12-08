package casbin;

@:jsRequire("casbin", "Model") extern class Model {
	/**
		constructor is the constructor for Model.
	**/
	function new();
	var model : js.lib.Map<String, js.lib.Map<String, Assertion>>;
	private var loadAssertion : Dynamic;
	private var getKeySuffix : Dynamic;
	private var loadSection : Dynamic;
	function addDef(sec:String, key:String, value:String):Bool;
	function loadModel(path:String):Void;
	function loadModelFromText(text:String):Void;
	function loadModelFromConfig(cfg:ConfigInterface):Void;
	private var hasSection : Dynamic;
	function printModel():Void;
	function buildIncrementalRoleLinks(rm:RoleManager, op:PolicyOp, sec:String, ptype:String, rules:Array<Array<String>>):js.lib.Promise<Void>;
	function buildRoleLinks(rm:RoleManager):js.lib.Promise<Void>;
	function clearPolicy():Void;
	function getPolicy(sec:String, key:String):Array<Array<String>>;
	function hasPolicy(sec:String, key:String, rule:Array<String>):Bool;
	function addPolicy(sec:String, key:String, rule:Array<String>):Bool;
	function addPolicies(sec:String, ptype:String, rules:Array<Array<String>>):ts.Tuple2<Bool, Array<Array<String>>>;
	function removePolicy(sec:String, key:String, rule:Array<String>):Bool;
	function removePolicies(sec:String, ptype:String, rules:Array<Array<String>>):ts.Tuple2<Bool, Array<Array<String>>>;
	function getFilteredPolicy(sec:String, key:String, fieldIndex:Float, fieldValues:haxe.extern.Rest<String>):Array<Array<String>>;
	function removeFilteredPolicy(sec:String, key:String, fieldIndex:Float, fieldValues:haxe.extern.Rest<String>):ts.Tuple2<Bool, Array<Array<String>>>;
	function getValuesForFieldInPolicy(sec:String, key:String, fieldIndex:Float):Array<String>;
	function getValuesForFieldInPolicyAllTypes(sec:String, fieldIndex:Float):Array<String>;
	function printPolicy():Void;
	static var prototype : Model;
}