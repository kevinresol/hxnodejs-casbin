package casbin;

typedef Watcher = {
	function setUpdateCallback(cb:() -> Void):Void;
	function update():js.lib.Promise<Bool>;
};