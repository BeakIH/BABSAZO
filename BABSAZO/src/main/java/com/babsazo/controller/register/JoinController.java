package com.babsazo.controller.register;

import java.sql.Timestamp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/register")
	public class JoinController {

	
	private JoinDAO dao;
	@Autowired
	public void setDao(JoinDAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping(value="/joinForm.do",method=RequestMethod.GET)
	public String regiNormal() {
		return "regiNormal";
	}
/*	@RequestMapping("/regiPro.do") 
	public String regiPro() {
		return "regiPro";
	}
	@RequestMapping("/register.do")
	public String register() {
		return "register";
	}*/	
	
	
	@RequestMapping(value="/registerSignUp.do",method=RequestMethod.POST)
	public ModelAndView regiNormalSignUp(JoinCommand command) {
		ModelAndView mav = new ModelAndView("register");
		command.setJoin_date(new Timestamp(System.currentTimeMillis()));
		command.getZipcodeCommand().setMemberNo(command.getMem_No());
		dao.registerSignUp(command);
		dao.registerAddress(command.getZipcodeCommand());
		return mav;
	}
	
}

