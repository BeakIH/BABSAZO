package com.babsazo.controller.register;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

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
	
	@RequestMapping(value="/regiNormal.do",method=RequestMethod.GET)
	public String regiNormal() {
		return "regiNormal";
	}
	@RequestMapping("/regiPro.do") 
	public String regiPro() {
		return "regiPro";
	}
	@RequestMapping("/register.do")
	public String register() {
		return "register";
	}	
	
	
	@RequestMapping(value="/registerSignUp.do",method=RequestMethod.POST)
	public ModelAndView regiNormalSignUp(JoinCommand command) {
		ModelAndView mav = new ModelAndView("register");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
		String currentYear = sdf.format(new Date(System.currentTimeMillis()));
		String age = Integer.toString((Integer.parseInt(currentYear) - Integer.parseInt(command.getBday_year()))+1);
		command.setRe_date(new Timestamp(System.currentTimeMillis()));
		command.setBirthday(command.getBday_year()+command.getBday_month()+command.getBday_name());
		command.setAge(age);
		command.getZipcodeCommand().setMemberNo(command.getMemberNo());
		dao.registerSignUp(command);
		dao.registerAddress(command.getZipcodeCommand());
		return mav;
	}
	
}

