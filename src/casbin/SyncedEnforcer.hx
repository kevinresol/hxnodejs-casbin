package casbin;

@:jsRequire("casbin", "SyncedEnforcer") extern class SyncedEnforcer extends Enforcer {
	function new();
	private var lock : Dynamic;
	static var prototype : SyncedEnforcer;
}