package casbin;

/**
	FileAdapter is the file adapter for Casbin.
	It can load policy from file or save policy to file.
**/
@:jsRequire("casbin", "FileAdapter") extern class FileAdapter {
	/**
		FileAdapter is the constructor for FileAdapter.
	**/
	function new(filePath:String);
	final filePath : String;
	function loadPolicy(model:Model):js.lib.Promise<Void>;
	private var loadPolicyFile : Dynamic;
	/**
		savePolicy saves all policy rules to the storage.
	**/
	function savePolicy(model:Model):js.lib.Promise<Bool>;
	private var savePolicyFile : Dynamic;
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
	static var prototype : FileAdapter;
}