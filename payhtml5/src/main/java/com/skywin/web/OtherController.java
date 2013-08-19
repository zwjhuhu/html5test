package com.skywin.web;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OtherController {

	@RequestMapping(value = { "/contact", "/about", "/services",
			"/testimonials", "/shortcodes", "text_columns", "/blog",
			"/blog_post", "/portfolio2", "portfolio3", "portfolio4",
			"/services", "/shortcodes", "/testimonials", "/text_columns",
			"/menuedit" }, method = RequestMethod.GET)
	public String forwardOther(HttpServletRequest req) {
		String uri = req.getRequestURI();
		String contectPath = req.getContextPath();
		int offset = uri.indexOf(contectPath);
		String ret = uri.substring(offset + contectPath.length());
		if (StringUtils.isBlank(ret))
			ret = "index";
		return ret;
	}

	// @RequestMapping(value = "/login", method = RequestMethod.GET)
	// public String login() {
	// return "login";
	// }

}
