package com.skywin.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skywin.model.ReUserInf;
import com.skywin.model.UserRedisAccessInf;
import com.skywin.redis.dao.UserAccessInfDao;
import com.skywin.service.UserService;

@Controller
@RequestMapping("/access")
public class UserAccessController {

	private static Log logger = LogFactory.getLog(UserAccessController.class);

	private UserAccessInfDao userAccessInfDao;

	private UserService userService;

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@Autowired
	public void setUserAccessInfDao(UserAccessInfDao userAccessInfDao) {
		this.userAccessInfDao = userAccessInfDao;
	}

	@RequestMapping(value = "/manager", method = RequestMethod.GET)
	public String list(Integer page, Integer size, Model model) {

		Map<String, List<UserRedisAccessInf>> map = new HashMap<String, List<UserRedisAccessInf>>();
		List<ReUserInf> list = userService.findAll();
		List<UserRedisAccessInf> accs = new ArrayList<UserRedisAccessInf>();

		for (ReUserInf user : list) {
			String username = user.getUsername();
			logger.debug("查找"+username+"的访问记录！");
			if (!StringUtils.isBlank(username)) {
				accs = userAccessInfDao.readByUser(username);
				if (accs != null && !accs.isEmpty()) {
					map.put(username, accs);
				}
			}
		}
		model.addAttribute("accessMap", map);
		return "access/list";
	}

	/**
	 * 局部异常处理,仅仅只能处理这个控制器中的异常
	 */
	/*
	 * @ExceptionHandler(value={UserException.class}) public String
	 * handlerException(UserException e,HttpServletRequest req) {
	 * req.setAttribute("e",e); return "error"; }
	 */
}
