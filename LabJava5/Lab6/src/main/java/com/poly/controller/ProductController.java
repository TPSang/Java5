package com.poly.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.entity.Category;
import com.poly.entity.Product;
import com.poly.entity.Report;
import com.poly.interfaceDAO.ProductDAO;
import com.poly.service.SessionService;

@Controller
public class ProductController {
	@Autowired
	ProductDAO dao;
	@Autowired
	SessionService session;

	@RequestMapping("/product/sort")
	public String sort(Model model, @RequestParam("field") Optional<String> field) {
		Sort sort = Sort.by(Direction.DESC, field.orElse("price"));
		model.addAttribute("field", field.orElse("price").toUpperCase());
		List<Product> items = dao.findAll(sort);
		model.addAttribute("items", items);
		return "product/sort";
	}

	@RequestMapping("/product/page")
	public String paginate(Model model, @RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page = dao.findAll(pageable);
		model.addAttribute("page", page);
		return "product/page";
	}

	@RequestMapping("/product/search")
	public String search(Model model, @RequestParam("min") Optional<Double> min,
			@RequestParam("max") Optional<Double> max) {
		double minPrice = min.orElse(Double.MIN_VALUE);
		double maxPrice = max.orElse(Double.MAX_VALUE);
		List<Product> items = dao.findByPrice(minPrice, maxPrice);
		model.addAttribute("items", items);
		return "product/search";
	}

	@RequestMapping("/product/search-and-page")
	public String searchAndPage(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		String kwords = kw.orElse(session.get("keywords", ""));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page = dao.findByKeywords("%" + kwords + "%", pageable);
		model.addAttribute("page", page);
		return "product/search-and-page";
	}

	@RequestMapping("/report/inventory-by-category")
	public String inventory(Model model) {
		List<Report> items = dao.getInventoryByCategory();
		model.addAttribute("items", items);
		return "report/inventory-by-category";
	}

	@RequestMapping("/product/search1")
	public String search1(Model model, @RequestParam("min") Optional<Double> min,
			@RequestParam("max") Optional<Double> max) {
		double minPrice = min.orElse(Double.MIN_VALUE);
		double maxPrice = max.orElse(Double.MAX_VALUE);
		List<Product> items = dao.findByPriceBetween(minPrice, maxPrice);
		model.addAttribute("items", items);
		return "product/search1";
	}
	// tìm theo tên và tìm theo id, tìm theo giá

	@RequestMapping("/product/search-and-page1")
	public String searchAndPage1(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		String kwords = kw.orElse(session.get("keywords", ""));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page;
//		try {
//			Integer numberKwords = Integer.parseInt(kwords);
//			page = dao.findAllByIdIs(numberKwords, pageable);
//		} catch (Exception e) {
//			try {
//				Double dPrice = Double.parseDouble(kwords);
//				page = dao.findAllByPriceIs(dPrice, pageable);
//			} catch (Exception e2) {
//				page = dao.findAllByNameLike("%" + kwords + "%", pageable);
//			}
//
//		}
		page=dao.findByKeywordss("%" + kwords + "%", pageable);

		model.addAttribute("page", page);
		return "product/search-and-page1";
	}
}
