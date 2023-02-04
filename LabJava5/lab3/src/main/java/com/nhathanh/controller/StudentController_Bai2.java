package com.nhathanh.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nhathanh.bean.Student;

@Controller
public class StudentController_Bai2 {
	@RequestMapping("/form_Bai2")
	public String form(@ModelAttribute("student") Student sv) {
		return "form_Bai1";
	}

	@RequestMapping("/student/save2")
	public String save(Model model,@Valid @ModelAttribute("student") Student sv,BindingResult result) {
		if(result.hasErrors()) {
			model.addAttribute("message", "Lưu thông tin thất bại !");
			} else {
			model.addAttribute("message", "Chúc mừng, bạn đã nhập đúng và lưu thành công !");
			}
		return "form_Bai1";
	}

	@ModelAttribute("genders")
	public Map<Boolean, String> getGenders() {
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Male");
		map.put(false, "Female");
		return map;
	}

	@ModelAttribute("faculties")
	public List<String> getFaculties() {
		return Arrays.asList("CNTT", "DLNHKS", "QTDN");
	}

	@ModelAttribute("hobbies")
	public Map<String, String> getHobbies() {
		Map<String, String> map = new HashMap<>();
		map.put("T", "Travelling");
		map.put("M", "Music");
		map.put("F", "Food");
		map.put("O", "Other");
		return map;
	}

}
