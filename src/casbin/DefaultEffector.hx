package casbin;

/**
	DefaultEffector is default effector for Casbin.
**/
@:jsRequire("casbin", "DefaultEffector") extern class DefaultEffector {
	function new();
	function newStream(expr:String):EffectorStream;
	static var prototype : DefaultEffector;
}