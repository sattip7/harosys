package com.gulludada.harosys.user.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserLoginController {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(UserLoginController.class);
	private static final String LOGIN_PAGE = "login";
	private static final String SIGN_UP_PAGE = "register";
	private static final String FORGOT_PASSWORD_PAGE = "";
	private static final String SUCCESS_LOGIN_PAGE = "";
	private static final String SUCCESS_REGISTER_PAGE = "";

	@RequestMapping(value = "user/login", method = RequestMethod.GET)
	public String showLoginPage(ModelMap map) {
		LOGGER.debug("================> user login form is requested.");
		/*map.addAttribute("ldapUserDto", new LdapUserDto());*/
		return LOGIN_PAGE;
	}

	@RequestMapping(value = "user/login", method = RequestMethod.POST)
	public String submitLoginPage(HttpSession session) {
		LOGGER.info("================>> A user is is trying to login with username "
				+ "...");
		session.setAttribute("user", true)
		return SUCCESS_LOGIN_PAGE;
	}

	@RequestMapping(value = "user/forgot", method = RequestMethod.POST)
	public String getPasswordByForgotPassword() {
		LOGGER.info("================>> A user is forgoted password with mail or userid "
				+ "...");
		return FORGOT_PASSWORD_PAGE;
	}

	@RequestMapping(value = "user/register", method = RequestMethod.GET)
	public String showSignUpPage(ModelMap map) {
		LOGGER.debug("================> user signup form is requested.");
		return SIGN_UP_PAGE;
	}

	@RequestMapping(value = "user/register",method = RequestMethod.POST)
	public String submitSignUpPage(HttpServletRequest req) {
		LOGGER.info("================>> A user is trying to create a a/c with mailid or username "
				+ "...");
		req.setAttribute("registered", true);
		
		return LOGIN_PAGE;
	}
}
