package com.gulludada.harosys.user.mvc;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class LandingPageController {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(LandingPageController.class);

	private static final String REDIRECTING_TO_USER_LOGIN_PAGE = "user/login";

	@RequestMapping(method = RequestMethod.GET)
	public String landingPage(HttpServletRequest request) {

		String ipAddress = request.getHeader("X-FORWARDED-FOR");
		if (ipAddress == null) {
			ipAddress = request.getRemoteAddr();
		}
		LOGGER.info("================> A request is hitting from the ip "
				+ ipAddress);
		return "redirect:" + REDIRECTING_TO_USER_LOGIN_PAGE;
	}
}
