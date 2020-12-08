package casbin;

/**
	Enforcer = ManagementEnforcer + RBAC API.
**/
@:jsRequire("casbin", "Enforcer") extern class Enforcer extends casbin.lib.cjs.managementenforcer.ManagementEnforcer {
	function new();
	/**
		initWithFile initializes an enforcer with a model file and a policy file.
	**/
	function initWithFile(modelPath:String, policyPath:String):js.lib.Promise<Void>;
	/**
		initWithFile initializes an enforcer with a model file and a policy file.
	**/
	function initWithString(modelPath:String, policyString:String):js.lib.Promise<Void>;
	/**
		initWithAdapter initializes an enforcer with a database adapter.
	**/
	function initWithAdapter(modelPath:String, adapter:Adapter):js.lib.Promise<Void>;
	/**
		initWithModelAndAdapter initializes an enforcer with a model and a database adapter.
	**/
	function initWithModelAndAdapter(m:Model, ?adapter:Adapter):js.lib.Promise<Void>;
	/**
		getRolesForUser gets the roles that a user has.
	**/
	function getRolesForUser(name:String, ?domain:String):js.lib.Promise<Array<String>>;
	/**
		getUsersForRole gets the users that has a role.
	**/
	function getUsersForRole(name:String, ?domain:String):js.lib.Promise<Array<String>>;
	/**
		hasRoleForUser determines whether a user has a role.
	**/
	function hasRoleForUser(name:String, role:String, ?domain:String):js.lib.Promise<Bool>;
	/**
		addRoleForUser adds a role for a user.
		Returns false if the user already has the role (aka not affected).
	**/
	function addRoleForUser(user:String, role:String, ?domain:String):js.lib.Promise<Bool>;
	/**
		deleteRoleForUser deletes a role for a user.
		Returns false if the user does not have the role (aka not affected).
	**/
	function deleteRoleForUser(user:String, role:String, ?domain:String):js.lib.Promise<Bool>;
	/**
		deleteRolesForUser deletes all roles for a user.
		Returns false if the user does not have any roles (aka not affected).
	**/
	function deleteRolesForUser(user:String, ?domain:String):js.lib.Promise<Bool>;
	/**
		deleteUser deletes a user.
		Returns false if the user does not exist (aka not affected).
	**/
	function deleteUser(user:String):js.lib.Promise<Bool>;
	/**
		deleteRole deletes a role.
		Returns false if the role does not exist (aka not affected).
	**/
	function deleteRole(role:String):js.lib.Promise<Bool>;
	/**
		deletePermission deletes a permission.
		Returns false if the permission does not exist (aka not affected).
	**/
	function deletePermission(permission:haxe.extern.Rest<String>):js.lib.Promise<Bool>;
	/**
		addPermissionForUser adds a permission for a user or role.
		Returns false if the user or role already has the permission (aka not affected).
	**/
	function addPermissionForUser(user:String, permission:haxe.extern.Rest<String>):js.lib.Promise<Bool>;
	/**
		deletePermissionForUser deletes a permission for a user or role.
		Returns false if the user or role does not have the permission (aka not affected).
	**/
	function deletePermissionForUser(user:String, permission:haxe.extern.Rest<String>):js.lib.Promise<Bool>;
	/**
		deletePermissionsForUser deletes permissions for a user or role.
		Returns false if the user or role does not have any permissions (aka not affected).
	**/
	function deletePermissionsForUser(user:String):js.lib.Promise<Bool>;
	/**
		getPermissionsForUser gets permissions for a user or role.
	**/
	function getPermissionsForUser(user:String):js.lib.Promise<Array<Array<String>>>;
	/**
		hasPermissionForUser determines whether a user has a permission.
	**/
	function hasPermissionForUser(user:String, permission:haxe.extern.Rest<String>):js.lib.Promise<Bool>;
	/**
		getImplicitRolesForUser gets implicit roles that a user has.
		Compared to getRolesForUser(), this function retrieves indirect roles besides direct roles.
		For example:
		g, alice, role:admin
		g, role:admin, role:user
		
		getRolesForUser("alice") can only get: ["role:admin"].
		But getImplicitRolesForUser("alice") will get: ["role:admin", "role:user"].
	**/
	function getImplicitRolesForUser(name:String, domain:haxe.extern.Rest<String>):js.lib.Promise<Array<String>>;
	/**
		getImplicitPermissionsForUser gets implicit permissions for a user or role.
		Compared to getPermissionsForUser(), this function retrieves permissions for inherited roles.
		For example:
		p, admin, data1, read
		p, alice, data2, read
		g, alice, admin
		
		getPermissionsForUser("alice") can only get: [["alice", "data2", "read"]].
		But getImplicitPermissionsForUser("alice") will get: [["admin", "data1", "read"], ["alice", "data2", "read"]].
	**/
	function getImplicitPermissionsForUser(user:String, domain:haxe.extern.Rest<String>):js.lib.Promise<Array<Array<String>>>;
	/**
		getImplicitUsersForPermission gets implicit users for a permission.
		For example:
		p, admin, data1, read
		p, bob, data1, read
		g, alice, admin
		
		getImplicitUsersForPermission("data1", "read") will get: ["alice", "bob"].
		Note: only users will be returned, roles (2nd arg in "g") will be excluded.
	**/
	function getImplicitUsersForPermission(permission:haxe.extern.Rest<String>):js.lib.Promise<Array<String>>;
	static var prototype : Enforcer;
}