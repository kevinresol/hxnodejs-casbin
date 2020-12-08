package casbin;

typedef EffectorStream = {
	function current():Bool;
	function pushEffect(eft:Effect):ts.Tuple2<Bool, Bool>;
};