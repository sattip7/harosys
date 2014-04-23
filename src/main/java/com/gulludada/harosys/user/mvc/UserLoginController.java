package com.gulludada.harosys.user.mvc;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gulludada.harosys.user.mvc.dto.LdapUserDto;
import com.gulludada.harosys.user.mvc.dto.UserDto;

@Controller
public class UserLoginController {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(UserLoginController.class);
	private static final String LOGIN_PAGE = "login";
	private static final String SIGN_UP_PAGE = "register";
	private static final String FORGOT_PASSWORD_PAGE = "";
	private static final String SUCCESS_LOGIN_PAGE = "success";
	private static final String SUCCESS_REGISTER_PAGE = "";
	
	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
	 SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
	 dateFormat.setLenient(false);
	 webDataBinder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	 }

	@RequestMapping(value = "user/login", method = RequestMethod.GET)
	public String showLoginPage(ModelMap map,HttpServletRequest req) {
		LOGGER.debug("================> user login form is requested.");
		/*map.addAttribute("ldapUserDto", new LdapUserDto());*/
		
		map.addAttribute("ldapUserDto", new LdapUserDto());
		return LOGIN_PAGE;
	} 

	@RequestMapping(value = "user/login", method = RequestMethod.POST)
	public String submitLoginPage(HttpSession session, @ModelAttribute("ldapuserDto") LdapUserDto ldapUserdto) {
		LOGGER.info("================>> A user is is trying to login with username "
				+ "...");
		session.setAttribute("user", true);
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
		map.addAttribute("userDto", new UserDto());
		return SIGN_UP_PAGE;
	}

	@RequestMapping(value = "user/register",method = RequestMethod.POST)
	public ModelAndView submitSignUpPage(HttpServletRequest req, @ModelAttribute("userDto") UserDto userDto) {
		LOGGER.info("================>> A user is trying to create a a/c with mailid or username "
				+ "...");
		req.setAttribute("registered", true);
		//String login="${pageContext.request.contextPath}"+ "/user/login;
		return new ModelAndView("forward:"+"/user/login");
	}
}
