package com.stencyl.io;

import com.stencyl.models.Resource;
import com.stencyl.models.IdType;
import haxe.xml.Fast;

interface AbstractReader 
{
	function accepts(type:String):Bool;
	function read(ID:Int, atlasID:IdType, type:String, name:String, xml:Fast):Resource;
}
