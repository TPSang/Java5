package com.poly.bai2;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.bai1.CookieService;
import com.poly.bai1.ParamService;
import com.poly.bai1.SessionService;

@Controller
@RequestMapping("/account/")
public class AccountController {

	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
//	@Autowired
	SessionService sessionService;

	
//	http://localhost:8080/account/login
	@GetMapping("login")
	public String login1() {
		return "/account/login";
	}

	@PostMapping("login")
//	
	public String login2(@RequestParam("attach") MultipartFile attach) {
		String un = paramService.getString("username", "");
		String pw = paramService.getString("password", "");
		boolean rm = paramService.getBoolean("remember", false);
		
		System.out.println(attach.getOriginalFilename());
		
		if((un.equals("admin")) && pw.equals("123")) {
//			sessionService.set("username", un);
			if(rm) {
				cookieService.add("user", un, 10);
				cookieService.add("pass", pw, 10);
				cookieService.add("img",attach.getOriginalFilename(),10);
				System.out.println("luu cookie");
			}else {
				cookieService.remove("user");
				cookieService.remove("pass");
				cookieService.remove("img");
			}
		}else {
			System.out.println("dang nhap that bai");
		}
		
		File saveFile =paramService.save(attach,"photo");
		
		return "/account/login";
	}

}
