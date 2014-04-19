package com.gulludada.harosys.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class LandingPageController {
	//new comment
	private static String HOME_PAGE = "home";
	
	
	@RequestMapping(method = RequestMethod.GET)
	public String showHomePage() {
		return HOME_PAGE;
	}
}
