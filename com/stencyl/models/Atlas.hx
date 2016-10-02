package com.stencyl.models;

class Atlas 
{
	public var ID:IdType;
	public var name:String;
	public var allScenes:Bool;
	public var active:Bool;
	public var members:Array<Int>;
	
	public function new(ID:IdType, name:String, allScenes:Bool, members:Array<Int>)
	{	
		this.ID = ID;
		this.name = name;
		this.allScenes = allScenes;
		this.members = members;
		
		#if (cpp || neko)
		active = allScenes;
		#else
		active = true;
		#end
	}
}
