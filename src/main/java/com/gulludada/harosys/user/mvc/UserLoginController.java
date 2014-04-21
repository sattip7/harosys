package com.gulludada.harosys.user.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gulludada.harosys.user.mvc.dto.UserDto;

@Controller
public class UserLoginController {

	private static final String LOGIN_PAGE = "login";
	private static final String SIGN_UP_PAGE = "";
	private static final String FORGOT_PASSWORD_PAGE = "";
	private static final String SUCCESS_LOGIN_PAGE = "";
	private static final String SUCCESS_REGISTER_PAGE = "";

	@RequestMapping(value = "user/login", method = RequestMethod.GET)
	public String showLoginPage(ModelMap map) {
		map.addAttribute("ldapUserDto", new UserDto());
		return LOGIN_PAGE;
	}

	public String submitLoginPage() {
		return SUCCESS_LOGIN_PAGE;
	}

	public String getPasswordByForgotPassword() {
		return FORGOT_PASSWORD_PAGE;
	}

	public String showSignUpPage() {
		return SIGN_UP_PAGE;
	}

	public String submitSignUpPage() {
		return SUCCESS_REGISTER_PAGE;
	}
}
