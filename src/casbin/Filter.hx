package casbin;

@:jsRequire("casbin", "Filter") extern class Filter {
	function new();
	var g : Array<String>;
	var p : Array<String>;
	static var prototype : Filter;
}