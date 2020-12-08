package casbin;

typedef RoleManager = {
	function clear():js.lib.Promise<Void>;
	function addLink(name1:String, name2:String, domain:haxe.extern.Rest<String>):js.lib.Promise<Void>;
	function deleteLink(name1:String, name2:String, domain:haxe.extern.Rest<String>):js.lib.Promise<Void>;
	function hasLink(name1:String, name2:String, domain:haxe.extern.Rest<String>):js.lib.Promise<Bool>;
	function getRoles(name:String, domain:haxe.extern.Rest<String>):js.lib.Promise<Array<String>>;
	function getUsers(name:String, domain:haxe.extern.Rest<String>):js.lib.Promise<Array<String>>;
	function printRoles():js.lib.Promise<Void>;
};