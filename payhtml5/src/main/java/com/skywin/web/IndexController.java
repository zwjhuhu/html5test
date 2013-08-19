package com.skywin.web;

import java.util.Date;
import java.util.UUID;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skywin.exception.UserException;
import com.skywin.model.ReUserInf;
import com.skywin.model.UserRedisInf;
import com.skywin.redis.dao.UserDao;
import com.skywin.service.UserService;

@Controller
public class IndexController {

	private UserService userService;
	private UserDao userDao;

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@Autowired
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@RequestMapping(value = { "/index", "/" })
	public String index() {
		return "index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}

	@RequestMapping(value = "/accessFail", method = RequestMethod.GET)
	public String accessFail() {
		return "accessFail";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(String username, String password, String loginkeeping,
			HttpServletRequest req, HttpServletResponse resp){
		ReUserInf user = new ReUserInf();
		user.setUsername(username);
		user.setPassword(password);
		user = userService.login(user);
		if (user == null) {
			throw new UserException("用户名或密码错误,请核对之后重新登录!");
		} else {
			String userid = UUID.randomUUID().toString();
			UserRedisInf redisuser = new UserRedisInf();
			BeanUtils.copyProperties(user, redisuser);
			redisuser.setUid(userid);
			boolean keeping = false;
			if ("1".equals(loginkeeping))
				keeping = true;
			redisuser.setLoginkeeping(keeping);
			redisuser.setFirstlogintime(new Date().getTime());
			userDao.save(redisuser);
			Cookie cookie = new Cookie("userid", userid);
			int expiry = -1;
			if (keeping)
				expiry = 7 * 24 * 3600;
			cookie.setMaxAge(expiry);
			resp.addCookie(cookie);
			return "redirect:/index";
		}
	}

	@RequestMapping("/logout")
	public String logout(Model model, HttpServletRequest req,
			HttpServletResponse resp) {
		Cookie[] cookies = req.getCookies();
		if (cookies == null || cookies.length == 0) {
			;
		} else {
			String userid = null;
			for (Cookie c : cookies) {
				if ("userid".equals(c.getName())) {
					userid = c.getValue();
					break;
				}
			}
			if (!StringUtils.isBlank(userid)) {
				userDao.delete(userid);
				Cookie cookie = new Cookie("userid", userid);
				cookie.setMaxAge(0);
				resp.addCookie(cookie);
				UserRedisInf user = userDao.read(userid);
				if(user!=null){
					if(!user.isLoginkeeping()){
						userDao.delete(userid);
					}
				}
			}
		}
		
		return "redirect:/login";
	}
}
