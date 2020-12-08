package casbin.lib.cjs;

@:jsRequire("casbin/lib/cjs/enforcer") @valueModuleOnly extern class Enforcer {
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
}