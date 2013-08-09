package com.skywin.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login() {
		return "login";
	}

	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(String username,String password,Model model) {
//		User u = userService.login(username, password);
//		model.addAttribute("loginUser", u);
		return "redirect:/user/users";
	}
	
	@RequestMapping("/logout")
	public String logout(Model model,HttpSession session) {
//		model.asMap().remove("loginUser");
//		session.invalidate();
		return "redirect:/login";
	}
}
