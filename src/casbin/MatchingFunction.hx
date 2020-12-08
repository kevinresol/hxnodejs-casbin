package casbin;

typedef MatchingFunction = (arg:haxe.extern.Rest<Dynamic>) -> ts.AnyOf4<Float, Bool, js.lib.Promise<Bool>, js.lib.Promise<Float>>;