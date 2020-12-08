package casbin;

@:jsRequire("casbin", "CachedEnforcer") extern class CachedEnforcer extends Enforcer {
	function new();
	private var enableCache : Dynamic;
	private var m : Dynamic;
	function invalidateCache():Void;
	function setEnableCache(enableCache:Bool):Void;
	private var getCache : Dynamic;
	private var setCache : Dynamic;
	static var prototype : CachedEnforcer;
	private static var canCache : Dynamic;
	private static var getCacheKey : Dynamic;
}