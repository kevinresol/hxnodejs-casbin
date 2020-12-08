package casbin;

@:jsRequire("casbin", "Effect") @:enum extern abstract Effect(Int) from Int to Int {
	var Allow;
	var Indeterminate;
	var Deny;
}