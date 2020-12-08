package casbin;

/**
	DefaultEffectorStream is the default implementation of EffectorStream.
**/
@:jsRequire("casbin", "DefaultEffectorStream") extern class DefaultEffectorStream {
	function new(expr:String);
	private var done : Dynamic;
	private var res : Dynamic;
	private final expr : Dynamic;
	function current():Bool;
	function pushEffect(eft:Effect):ts.Tuple2<Bool, Bool>;
	static var prototype : DefaultEffectorStream;
}