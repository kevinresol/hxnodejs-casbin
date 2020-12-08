@:jsRequire("casbin") @valueModuleOnly extern class Casbin {
	static function newEnforcerWithClass<T>(enforcer:{ }, params:haxe.extern.Rest<Dynamic>):js.lib.Promise<T>;
	/**
		newEnforcer creates an enforcer via file or DB.
		
		File:
		```js
		const e = new Enforcer('path/to/basic_model.conf', 'path/to/basic_policy.csv');
		```
		
		MySQL DB:
		```js
		const a = new MySQLAdapter('mysql', 'mysql_username:mysql_password@tcp(127.0.0.1:3306)/');
		const e = new Enforcer('path/to/basic_model.conf', a);
		```
	**/
	static function newEnforcer(params:haxe.extern.Rest<Dynamic>):js.lib.Promise<casbin.Enforcer>;
	static function newCachedEnforcer(params:haxe.extern.Rest<Dynamic>):js.lib.Promise<casbin.CachedEnforcer>;
	static function newSyncedEnforcer(params:haxe.extern.Rest<Dynamic>):js.lib.Promise<casbin.SyncedEnforcer>;
	/**
		newModel creates a model.
	**/
	static function newModel(text:haxe.extern.Rest<String>):casbin.Model;
	/**
		newModelFromFile creates a model from a .CONF file.
	**/
	static function newModelFromFile(path:String):casbin.Model;
	/**
		newModelFromString creates a model from a string which contains model text.
	**/
	static function newModelFromString(text:String):casbin.Model;
	static final sectionNameMap : { };
	static final requiredSections : Array<String>;
	static function setLogger(l:casbin.Logger):Void;
	static function getLogger():casbin.Logger;
	static function logPrint(v:haxe.extern.Rest<Dynamic>):Void;
	static function logPrintf(format:String, v:haxe.extern.Rest<Dynamic>):Void;
	/**
		Experiment!
		getPermissionForCasbinJs returns a string describing the permission of a given user.
		You can pass the returned string to the frontend and manage your webpage widgets and APIs with Casbin.js.
		The returned permission depends on `getImplicitPermissionsForUser`.
		In other words, getPermissionForCasbinJs will load all of the explicit and implicit permission (role's permission).
	**/
	static function casbinJsGetPermissionForUser(e:casbin.Enforcer, user:String):js.lib.Promise<String>;
}