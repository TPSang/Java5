package com.nhathanh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nhathanh.bean.Student;

@Controller

public class StudentController_Bai1 {
	@RequestMapping("/form_Bai1")
	public String form(@ModelAttribute("sv") Student sv) {
		return "form_Bai1";
	}

	@RequestMapping("/student/save")
	public String save(@ModelAttribute("sv") Student sv) {
		return "form_Bai1";
	}

}
