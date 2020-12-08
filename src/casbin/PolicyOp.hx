package casbin;

@:jsRequire("casbin", "PolicyOp") @:enum extern abstract PolicyOp(Int) from Int to Int {
	var PolicyAdd;
	var PolicyRemove;
}