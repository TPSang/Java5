package com.nhathanh.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.nhathanh.bean.Student_Bai5;

@Controller
public class StudentController_Bai5 {
	@Autowired
	ServletContext app;

	@RequestMapping("/form_Bai5")
	public String form(@ModelAttribute("sv") Student_Bai5 sv) {
		return "form_Bai3,5";
	}

	@RequestMapping("/student/save5")
	public String save(Model model, @RequestParam("images") MultipartFile attach,
			@Valid @ModelAttribute("sv") Student_Bai5 sv, BindingResult result) throws IOException {
		String image = "";
		String error;
		// sv.setImage("");
		if (result.hasErrors()) {
			error = "Save information failed!";
			model.addAttribute("message", error);
		} else if (attach.isEmpty()) {
			error = "Please choose add image your profile !";
			model.addAttribute("errorImage", "0 0 10px red;");
			model.addAttribute("message", error);
		} else {
			// Xét lại bắt lỗi image
			model.addAttribute("errorImage", "");
			// Xét giá trị cho ảnh vào đối tượng Student
			image = saveImage(attach);
			sv.setImage(image);
			// Hiển thị file ảnh trên modal
			model.addAttribute("sv_regis", sv);
			error = "Congratulations, you entered correctly and saved successfully!";
			model.addAttribute("message", error);
		}
		return "form_Bai3,5";
	}

	@ModelAttribute("genders")
	public Map<Boolean, String> getGenders() {
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Male");
		map.put(false, "Female");

		return map;
	}

	@ModelAttribute("faculties")
	public Map<String, String> getFaculties() {
		Map<String, String> map = new HashMap<>();
		map.put("", "Choose your faculty");
		map.put("CNTT", "Information technology");
		map.put("DLNHKS", "Hotel restaurant tourism");
		map.put("QTDN", "Corporate governance");
		map.put("TMDT", "Ecommerce");
		return map;
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

	// Nếu thư mục upload chưa được tạo thì sẽ tạo
	public void createFloder() {
		File uploadRootDir = new File(app.getRealPath("upload"));
		if (!uploadRootDir.exists()) {
			uploadRootDir.mkdirs();
		}
	}

	// Lưu hình người dùng đã chọn
	public String saveImage(MultipartFile attach) throws IOException {
		// Lấy đường dẫn chính của thư mục upload
		File uploadRootDir = new File(app.getRealPath("upload"));
		// Nếu thư mục chưa được tạo thì sẽ tạo
		createFloder();
		// Lấy tên file được chọn
		String filename = attach.getOriginalFilename();
		File serverFile = new File(uploadRootDir.getAbsoluteFile() + File.separator + filename);
		BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
		stream.write(attach.getBytes());
		stream.close();
		return filename;
	}

	// Clean form
	public void clear(Student_Bai5 sv) {
		sv.setEmail("");
		sv.setFaculty("");
		sv.setGender(null);
		sv.setHobbies(null);
		sv.setImage("");
		sv.setMarks(0.0);
		sv.setName("");
	}
}
