package com.babsazo.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminMain {

	@RequestMapping("/admin.do")
	public String admin(Model model) {
		return "jsp/admin/admin_main";
	}
}
