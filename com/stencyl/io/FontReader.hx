package com.stencyl.io;

import haxe.xml.Fast;
import com.stencyl.models.Font;
import com.stencyl.models.Resource;
import com.stencyl.models.IdType;

class FontReader implements AbstractReader
{
	public function new() 
	{
	}		

	public function accepts(type:String):Bool
	{
		return type == "font";
	}
	
	public function read(ID:Int, atlasID:IdType, type:String, name:String, xml:Fast):Resource
	{
		//trace("Reading Font (" + ID + ") - " + name);
		
		return new Font(ID, atlasID, name, false);
	}
}
