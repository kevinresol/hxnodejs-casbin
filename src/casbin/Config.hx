package casbin;

@:jsRequire("casbin", "Config") extern class Config {
	private function new();
	private var data : Dynamic;
	/**
		addConfig adds a new section->key:value to the configuration.
	**/
	private var addConfig : Dynamic;
	private var parse : Dynamic;
	private var parseBuffer : Dynamic;
	private var write : Dynamic;
	function getBool(key:String):Bool;
	function getInt(key:String):Float;
	function getFloat(key:String):Float;
	function getString(key:String):String;
	function getStrings(key:String):Array<String>;
	function set(key:String, value:String):Void;
	function get(key:String):String;
	static var prototype : Config;
	private static var DEFAULT_SECTION : Dynamic;
	private static var DEFAULT_COMMENT : Dynamic;
	private static var DEFAULT_COMMENT_SEM : Dynamic;
	private static var DEFAULT_MULTI_LINE_SEPARATOR : Dynamic;
	/**
		newConfig create an empty configuration representation from file.
	**/
	static function newConfig(confName:String):Config;
	/**
		newConfigFromText create an empty configuration representation from text.
	**/
	static function newConfigFromText(text:String):Config;
}