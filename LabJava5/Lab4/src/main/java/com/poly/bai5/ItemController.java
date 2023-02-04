package com.poly.bai5;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.bai4.ShoppingCartService;
import com.poly.untity.SP;

@Controller
@RequestMapping("item")
public class ItemController {
//	http://localhost:8080/item/index
	
	@Autowired
	ShoppingCartService cart;
	
	@RequestMapping("index")
	public String cart(Model model) {
		model.addAttribute("item", SP.item.values());
		model.addAttribute("Count", cart.getCount());
		return "cart/spview";
	}
}
