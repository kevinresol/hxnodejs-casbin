package casbin;

/**
	FileAdapter is the file adapter for Casbin.
	It can load policy from file or save policy to file.
**/
@:jsRequire("casbin", "BatchFileAdapter") extern class BatchFileAdapter extends FileAdapter {
	/**
		FileAdapter is the constructor for FileAdapter.
	**/
	function new(filePath:String);
	function addPolicies(sec:String, ptype:String, rules:Array<Array<String>>):js.lib.Promise<Void>;
	function removePolicies(sec:String, ptype:String, rules:Array<Array<String>>):js.lib.Promise<Void>;
	static var prototype : BatchFileAdapter;
}