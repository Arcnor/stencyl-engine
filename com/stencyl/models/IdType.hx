package com.stencyl.models;

import de.polygonal.ds.IntHashTable;

typedef IdType = Int;
typedef IdHashTable<V> = IntHashTable<V>;

class IdUtils {
	public static var INVALID_ID = -1;
	public static var TILE_ID = 100000000;

	public static function parseId(id: String): IdType
	{
		return Std.parseInt(id);
	}

	public static function nextId(collection: Iterable<Identifiable>): IdType
	{
		var ID = -1;

		for(r in collection)
		{
			if(r == null)
			{
				continue;
			}

			ID = Std.int(Math.max(ID, r.ID));
		}

		return ID + 1;
	}
}

interface Identifiable {
	public var ID:IdType;
}