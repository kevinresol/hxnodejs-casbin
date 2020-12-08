package casbin;

@:jsRequire("casbin", "DefaultFilteredAdapter") extern class DefaultFilteredAdapter extends FileAdapter {
	function new(filePath:String);
	private var filtered : Dynamic;
	function loadFilteredPolicy(model:Model, filter:Filter):js.lib.Promise<Void>;
	private var loadFilteredPolicyFile : Dynamic;
	function isFiltered():Bool;
	static var prototype : DefaultFilteredAdapter;
	private static var filterLine : Dynamic;
	private static var filterWords : Dynamic;
}