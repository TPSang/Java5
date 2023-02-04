package com.poly.untity;

import java.util.HashMap;
import java.util.Map;

import com.poly.model.Item;

public class SP {

	public static Map<Integer, Item> item = new HashMap<>(); 
	static {
		
		item.put(1, new Item(1,"Iphone" , 23.0, 0,"ip.jpg"));
		item.put(2, new Item(2,"samsung" , 12.0, 0,"sam.jpg"));
		item.put(3, new Item(3,"TV" , 33.0, 0,"tv.jpg"));
		item.put(4, new Item(4,"Laptop" , 42.0, 0,"lap.png"));

	}
	
}
