package casbin.lib.cjs.coreenforcer;

/**
	CoreEnforcer defines the core functionality of an enforcer.
**/
@:jsRequire("casbin/lib/cjs/coreEnforcer", "CoreEnforcer") extern class CoreEnforcer {
	function new();
	private var modelPath : String;
	private var model : casbin.Model;
	private var fm : casbin.FunctionMap;
	private var eft : casbin.Effector;
	private var matcherMap : Dynamic;
	private var adapter : ts.AnyOf3<casbin.Adapter, casbin.FilteredAdapter, casbin.BatchAdapter>;
	private var watcher : Null<casbin.Watcher>;
	private var rm : casbin.RoleManager;
	private var enabled : Bool;
	private var autoSave : Bool;
	private var autoBuildRoleLinks : Bool;
	private var autoNotifyWatcher : Bool;
	private var getExpression : Dynamic;
	/**
		loadModel reloads the model from the model CONF file.
		Because the policy is attached to a model,
		so the policy is invalidated and needs to be reloaded by calling LoadPolicy().
	**/
	function loadModel():Void;
	/**
		getModel gets the current model.
	**/
	function getModel():casbin.Model;
	/**
		setModel sets the current model.
	**/
	function setModel(m:casbin.Model):Void;
	/**
		getAdapter gets the current adapter.
	**/
	function getAdapter():casbin.Adapter;
	/**
		setAdapter sets the current adapter.
	**/
	function setAdapter(adapter:casbin.Adapter):Void;
	/**
		setWatcher sets the current watcher.
	**/
	function setWatcher(watcher:casbin.Watcher):Void;
	/**
		setRoleManager sets the current role manager.
	**/
	function setRoleManager(rm:casbin.RoleManager):Void;
	/**
		getRoleManager gets the current role manager.
	**/
	function getRoleManager():casbin.RoleManager;
	/**
		setEffector sets the current effector.
	**/
	function setEffector(eft:casbin.Effector):Void;
	/**
		clearPolicy clears all policy.
	**/
	function clearPolicy():Void;
	/**
		loadPolicy reloads the policy from file/database.
	**/
	function loadPolicy():js.lib.Promise<Void>;
	/**
		loadFilteredPolicy reloads a filtered policy from file/database.
	**/
	function loadFilteredPolicy(filter:Dynamic):js.lib.Promise<Bool>;
	/**
		isFiltered returns true if the loaded policy has been filtered.
	**/
	function isFiltered():Bool;
	/**
		savePolicy saves the current policy (usually after changed with
		Casbin API) back to file/database.
	**/
	function savePolicy():js.lib.Promise<Bool>;
	/**
		enableEnforce changes the enforcing state of Casbin, when Casbin is
		disabled, all access will be allowed by the enforce() function.
	**/
	function enableEnforce(enable:Bool):Void;
	/**
		enableLog changes whether to print Casbin log to the standard output.
	**/
	function enableLog(enable:Bool):Void;
	/**
		enableAutoSave controls whether to save a policy rule automatically to
		the adapter when it is added or removed.
	**/
	function enableAutoSave(autoSave:Bool):Void;
	/**
		enableAutoNotifyWatcher controls whether to save a policy rule automatically notify the Watcher when it is added or removed.
	**/
	function enableAutoNotifyWatcher(enable:Bool):Void;
	/**
		enableAutoBuildRoleLinks controls whether to save a policy rule
		automatically to the adapter when it is added or removed.
	**/
	function enableAutoBuildRoleLinks(autoBuildRoleLinks:Bool):Void;
	/**
		buildRoleLinks manually rebuild the role inheritance relations.
	**/
	function buildRoleLinks():js.lib.Promise<Void>;
	/**
		buildIncrementalRoleLinks provides incremental build the role inheritance relations.
	**/
	function buildIncrementalRoleLinks(op:casbin.PolicyOp, ptype:String, rules:Array<Array<String>>):js.lib.Promise<Void>;
	private function buildRoleLinksInternal():js.lib.Promise<Void>;
	private var privateEnforce : Dynamic;
	/**
		If the matchers does not contain an asynchronous method, call it faster.
		
		enforceWithSyncCompile decides whether a "subject" can access a "object" with
		the operation "action", input parameters are usually: (sub, obj, act).
	**/
	function enforceWithSyncCompile(rvals:haxe.extern.Rest<Dynamic>):js.lib.Promise<Bool>;
	/**
		enforce decides whether a "subject" can access a "object" with
		the operation "action", input parameters are usually: (sub, obj, act).
	**/
	function enforce(rvals:haxe.extern.Rest<Dynamic>):js.lib.Promise<Bool>;
	static var prototype : CoreEnforcer;
}