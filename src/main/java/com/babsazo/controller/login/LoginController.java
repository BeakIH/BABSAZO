package com.babsazo.controller.login;


import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.babsazo.errors.AuthenticationException;
import com.babsazo.model.EmpDTO;

@Controller
@RequestMapping("/admin/login.do")
public class LoginController {
	
	private Authenticator authenticator; 
	
	public void setAuthenticator(Authenticator authenticator) {
		this.authenticator = authenticator;
	}
	
	@ModelAttribute("login")
	public EmpDTO formBacking() {
		return new EmpDTO();
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String submit(@ModelAttribute("login") EmpDTO empDto, BindingResult result) {
			new LoginCommandValidator().validate(empDto, result);
			if(result.hasErrors()) {
				return "loginForm";
			}
			try {
				authenticator.authenticate(empDto.getAdmId(), empDto.getAdmPw());
				return "loginSuccess";
			} catch (AuthenticationException e) {
				result.reject("invalidIdOrPassword", new Object[] {empDto.getAdmId()}, null);
				return "loginForm";
			}
	}
	
	
	
}
