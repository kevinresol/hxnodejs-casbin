package casbin.lib.cjs.managementenforcer;

/**
	ManagementEnforcer = InternalEnforcer + Management API.
**/
@:jsRequire("casbin/lib/cjs/managementEnforcer", "ManagementEnforcer") extern class ManagementEnforcer extends casbin.lib.cjs.internalenforcer.InternalEnforcer {
	function new();
	/**
		getAllSubjects gets the list of subjects that show up in the current policy.
	**/
	function getAllSubjects():js.lib.Promise<Array<String>>;
	/**
		getAllNamedSubjects gets the list of subjects that show up in the currentnamed policy.
	**/
	function getAllNamedSubjects(ptype:String):js.lib.Promise<Array<String>>;
	/**
		getAllObjects gets the list of objects that show up in the current policy.
	**/
	function getAllObjects():js.lib.Promise<Array<String>>;
	/**
		getAllNamedObjects gets the list of objects that show up in the current named policy.
	**/
	function getAllNamedObjects(ptype:String):js.lib.Promise<Array<String>>;
	/**
		getAllActions gets the list of actions that show up in the current policy.
	**/
	function getAllActions():js.lib.Promise<Array<String>>;
	/**
		GetAllNamedActions gets the list of actions that show up in the current named policy.
	**/
	function getAllNamedActions(ptype:String):js.lib.Promise<Array<String>>;
	/**
		getAllRoles gets the list of roles that show up in the current policy.
	**/
	function getAllRoles():js.lib.Promise<Array<String>>;
	/**
		getAllNamedRoles gets the list of roles that show up in the current named policy.
	**/
	function getAllNamedRoles(ptype:String):js.lib.Promise<Array<String>>;
	/**
		getPolicy gets all the authorization rules in the policy.
	**/
	function getPolicy():js.lib.Promise<Array<Array<String>>>;
	/**
		getFilteredPolicy gets all the authorization rules in the policy, field filters can be specified.
	**/
	function getFilteredPolicy(fieldIndex:Float, fieldValues:haxe.extern.Rest<String>):js.lib.Promise<Array<Array<String>>>;
	/**
		getNamedPolicy gets all the authorization rules in the named policy.
	**/
	function getNamedPolicy(ptype:String):js.lib.Promise<Array<Array<String>>>;
	/**
		getFilteredNamedPolicy gets all the authorization rules in the named policy, field filters can be specified.
	**/
	function getFilteredNamedPolicy(ptype:String, fieldIndex:Float, fieldValues:haxe.extern.Rest<String>):js.lib.Promise<Array<Array<String>>>;
	/**
		getGroupingPolicy gets all the role inheritance rules in the policy.
	**/
	function getGroupingPolicy():js.lib.Promise<Array<Array<String>>>;
	/**
		getFilteredGroupingPolicy gets all the role inheritance rules in the policy, field filters can be specified.
	**/
	function getFilteredGroupingPolicy(fieldIndex:Float, fieldValues:haxe.extern.Rest<String>):js.lib.Promise<Array<Array<String>>>;
	/**
		getNamedGroupingPolicy gets all the role inheritance rules in the policy.
	**/
	function getNamedGroupingPolicy(ptype:String):js.lib.Promise<Array<Array<String>>>;
	/**
		getFilteredNamedGroupingPolicy gets all the role inheritance rules in the policy, field filters can be specified.
	**/
	function getFilteredNamedGroupingPolicy(ptype:String, fieldIndex:Float, fieldValues:haxe.extern.Rest<String>):js.lib.Promise<Array<Array<String>>>;
	/**
		hasPolicy determines whether an authorization rule exists.
	**/
	function hasPolicy(params:haxe.extern.Rest<String>):js.lib.Promise<Bool>;
	/**
		hasNamedPolicy determines whether a named authorization rule exists.
	**/
	function hasNamedPolicy(ptype:String, params:haxe.extern.Rest<String>):js.lib.Promise<Bool>;
	/**
		addPolicy adds an authorization rule to the current policy.
		If the rule already exists, the function returns false and the rule will not be added.
		Otherwise the function returns true by adding the new rule.
	**/
	function addPolicy(params:haxe.extern.Rest<String>):js.lib.Promise<Bool>;
	/**
		addPolicies adds authorization rules to the current policy.
		If the rule already exists, the function returns false and the rules will not be added.
		Otherwise the function returns true by adding the new rules.
	**/
	function addPolicies(rules:Array<Array<String>>):js.lib.Promise<Bool>;
	/**
		addNamedPolicy adds an authorization rule to the current named policy.
		If the rule already exists, the function returns false and the rule will not be added.
		Otherwise the function returns true by adding the new rule.
	**/
	function addNamedPolicy(ptype:String, params:haxe.extern.Rest<String>):js.lib.Promise<Bool>;
	/**
		addNamedPolicies adds authorization rules to the current named policy.
		If the rule already exists, the function returns false and the rules will not be added.
		Otherwise the function returns true by adding the new rules.
	**/
	function addNamedPolicies(ptype:String, rules:Array<Array<String>>):js.lib.Promise<Bool>;
	/**
		removePolicy removes an authorization rule from the current policy.
	**/
	function removePolicy(params:haxe.extern.Rest<String>):js.lib.Promise<Bool>;
	/**
		removePolicies removes an authorization rules from the current policy.
	**/
	function removePolicies(rules:Array<Array<String>>):js.lib.Promise<Bool>;
	/**
		removeFilteredPolicy removes an authorization rule from the current policy, field filters can be specified.
	**/
	function removeFilteredPolicy(fieldIndex:Float, fieldValues:haxe.extern.Rest<String>):js.lib.Promise<Bool>;
	/**
		removeNamedPolicy removes an authorization rule from the current named policy.
	**/
	function removeNamedPolicy(ptype:String, params:haxe.extern.Rest<String>):js.lib.Promise<Bool>;
	/**
		removeNamedPolicies removes authorization rules from the current named policy.
	**/
	function removeNamedPolicies(ptype:String, rules:Array<Array<String>>):js.lib.Promise<Bool>;
	/**
		removeFilteredNamedPolicy removes an authorization rule from the current named policy, field filters can be specified.
	**/
	function removeFilteredNamedPolicy(ptype:String, fieldIndex:Float, fieldValues:haxe.extern.Rest<String>):js.lib.Promise<Bool>;
	/**
		hasGroupingPolicy determines whether a role inheritance rule exists.
	**/
	function hasGroupingPolicy(params:haxe.extern.Rest<String>):js.lib.Promise<Bool>;
	/**
		hasNamedGroupingPolicy determines whether a named role inheritance rule exists.
	**/
	function hasNamedGroupingPolicy(ptype:String, params:haxe.extern.Rest<String>):js.lib.Promise<Bool>;
	/**
		addGroupingPolicy adds a role inheritance rule to the current policy.
		If the rule already exists, the function returns false and the rule will not be added.
		Otherwise the function returns true by adding the new rule.
	**/
	function addGroupingPolicy(params:haxe.extern.Rest<String>):js.lib.Promise<Bool>;
	/**
		addGroupingPolicies adds a role inheritance rules to the current policy.
		If the rule already exists, the function returns false and the rules will not be added.
		Otherwise the function returns true by adding the new rules.
	**/
	function addGroupingPolicies(rules:Array<Array<String>>):js.lib.Promise<Bool>;
	/**
		addNamedGroupingPolicy adds a named role inheritance rule to the current policy.
		If the rule already exists, the function returns false and the rule will not be added.
		Otherwise the function returns true by adding the new rule.
	**/
	function addNamedGroupingPolicy(ptype:String, params:haxe.extern.Rest<String>):js.lib.Promise<Bool>;
	/**
		addNamedGroupingPolicies adds named role inheritance rules to the current policy.
		If the rule already exists, the function returns false and the rules will not be added.
		Otherwise the function returns true by adding the new rules.
	**/
	function addNamedGroupingPolicies(ptype:String, rules:Array<Array<String>>):js.lib.Promise<Bool>;
	/**
		removeGroupingPolicy removes a role inheritance rule from the current policy.
	**/
	function removeGroupingPolicy(params:haxe.extern.Rest<String>):js.lib.Promise<Bool>;
	/**
		removeGroupingPolicies removes role inheritance rules from the current policy.
	**/
	function removeGroupingPolicies(rules:Array<Array<String>>):js.lib.Promise<Bool>;
	/**
		removeFilteredGroupingPolicy removes a role inheritance rule from the current policy, field filters can be specified.
	**/
	function removeFilteredGroupingPolicy(fieldIndex:Float, fieldValues:haxe.extern.Rest<String>):js.lib.Promise<Bool>;
	/**
		removeNamedGroupingPolicy removes a role inheritance rule from the current named policy.
	**/
	function removeNamedGroupingPolicy(ptype:String, params:haxe.extern.Rest<String>):js.lib.Promise<Bool>;
	/**
		removeNamedGroupingPolicies removes role inheritance rules from the current named policy.
	**/
	function removeNamedGroupingPolicies(ptype:String, rules:Array<Array<String>>):js.lib.Promise<Bool>;
	/**
		removeFilteredNamedGroupingPolicy removes a role inheritance rule from the current named policy, field filters can be specified.
	**/
	function removeFilteredNamedGroupingPolicy(ptype:String, fieldIndex:Float, fieldValues:haxe.extern.Rest<String>):js.lib.Promise<Bool>;
	/**
		addFunction adds a customized function.
	**/
	function addFunction(name:String, func:casbin.MatchingFunction):js.lib.Promise<Void>;
	static var prototype : ManagementEnforcer;
}