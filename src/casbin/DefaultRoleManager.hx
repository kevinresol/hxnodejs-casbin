package casbin;

@:jsRequire("casbin", "DefaultRoleManager") extern class DefaultRoleManager {
	/**
		DefaultRoleManager is the constructor for creating an instance of the
		default RoleManager implementation.
	**/
	function new(maxHierarchyLevel:Float);
	private var allDomains : Dynamic;
	private var maxHierarchyLevel : Dynamic;
	private var hasPattern : Dynamic;
	private var hasDomainPattern : Dynamic;
	private var matchingFunc : Dynamic;
	private var domainMatchingFunc : Dynamic;
	/**
		addMatchingFunc support use pattern in g
		
		addMatchingFunc support use pattern in g
	**/
	@:overload(function(fn:MatchingFunc):js.lib.Promise<Void> { })
	function addMatchingFunc(name:String, fn:MatchingFunc):js.lib.Promise<Void>;
	/**
		addDomainMatchingFunc support use domain pattern in g
	**/
	function addDomainMatchingFunc(fn:MatchingFunc):js.lib.Promise<Void>;
	private var generateTempRoles : Dynamic;
	/**
		addLink adds the inheritance link between role: name1 and role: name2.
		aka role: name1 inherits role: name2.
		domain is a prefix to the roles.
	**/
	function addLink(name1:String, name2:String, domain:haxe.extern.Rest<String>):js.lib.Promise<Void>;
	/**
		clear clears all stored data and resets the role manager to the initial state.
	**/
	function clear():js.lib.Promise<Void>;
	/**
		deleteLink deletes the inheritance link between role: name1 and role: name2.
		aka role: name1 does not inherit role: name2 any more.
		domain is a prefix to the roles.
	**/
	function deleteLink(name1:String, name2:String, domain:haxe.extern.Rest<String>):js.lib.Promise<Void>;
	/**
		hasLink determines whether role: name1 inherits role: name2.
		domain is a prefix to the roles.
	**/
	function hasLink(name1:String, name2:String, domain:haxe.extern.Rest<String>):js.lib.Promise<Bool>;
	/**
		getRoles gets the roles that a subject inherits.
		domain is a prefix to the roles.
	**/
	function getRoles(name:String, domain:haxe.extern.Rest<String>):js.lib.Promise<Array<String>>;
	/**
		getUsers gets the users that inherits a subject.
		domain is an unreferenced parameter here, may be used in other implementations.
	**/
	function getUsers(name:String, domain:haxe.extern.Rest<String>):js.lib.Promise<Array<String>>;
	/**
		printRoles prints all the roles to log.
	**/
	function printRoles():js.lib.Promise<Void>;
	static var prototype : DefaultRoleManager;
}