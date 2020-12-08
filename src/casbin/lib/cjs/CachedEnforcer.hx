package casbin.lib.cjs;

@:jsRequire("casbin/lib/cjs/cachedEnforcer") @valueModuleOnly extern class CachedEnforcer {
	static function newCachedEnforcer(params:haxe.extern.Rest<Dynamic>):js.lib.Promise<casbin.CachedEnforcer>;
}