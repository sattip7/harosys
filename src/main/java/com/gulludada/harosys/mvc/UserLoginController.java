package com.gulludada.harosys.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserLoginController {
	
	private static final String LOGIN_PAGE = "login";
	private static final String SIGN_UP_PAGE = "";
	private static final String FORGOT_PASSWORD_PAGE = "";
	private static final String SUCCESS_PAGE = "";
	
	@RequestMapping(value ="user/login", method = RequestMethod.GET)
	public String showLoginPage(){
		return LOGIN_PAGE;
	}
}
