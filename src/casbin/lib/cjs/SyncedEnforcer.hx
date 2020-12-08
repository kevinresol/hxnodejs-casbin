package casbin.lib.cjs;

@:jsRequire("casbin/lib/cjs/syncedEnforcer") @valueModuleOnly extern class SyncedEnforcer {
	static function newSyncedEnforcer(params:haxe.extern.Rest<Dynamic>):js.lib.Promise<casbin.SyncedEnforcer>;
}