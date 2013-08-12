package com.skywin.filter;

import java.io.IOException;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.skywin.dao.ReUserInfDao;
import com.skywin.model.UserRedisAccessInf;
import com.skywin.model.UserRedisInf;
import com.skywin.redis.dao.UserAccessInfDao;
import com.skywin.redis.dao.UserDao;

public class UserFilter implements Filter {

	private static Log logger = LogFactory.getLog(UserFilter.class);

	private UserDao userDao;

	private UserAccessInfDao userAccessInfDao;

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		String url = req.getRequestURI();
		int index = url.lastIndexOf('/');
		url = url.substring(index);
		// 可以登录和登出
		if ("/login".equals(url) || "/logout".equals(url)) {
			logger.debug(url);
			chain.doFilter(req, resp);
		} else {

			Cookie[] cookies = req.getCookies();
			if (cookies == null || cookies.length == 0) {
				sendToLogin(req, resp);
			} else {
				String userid = null;
				for (Cookie c : cookies) {
					if ("userid".equals(c.getName())) {
						userid = c.getValue();
						break;
					}
				}
				if (userid == null || userid.isEmpty()) {
					sendToLogin(req, resp);
				} else {
					req.setAttribute("userid", userid);
					UserRedisInf user = userDao.read(userid);
					if (user == null) {
						sendToLogin(req, resp);
					} else {
						preUserInf(user, req);
						chain.doFilter(req, resp);
						postUserInf(user, req);
						req.removeAttribute("userid");
					}
				}
			}
		}

	}

	private void preUserInf(UserRedisInf user, HttpServletRequest req) {
		int count = user.getTracecount() + 1;
		String ip = req.getRemoteAddr();
		String url = req.getRequestURI();
		String ua = req.getHeader("user-agent");
		UserRedisAccessInf inf = new UserRedisAccessInf();
		inf.setId(count);
		inf.setIp(ip);
		inf.setStarttime(new Date().getTime());
		inf.setUrl(url);
		inf.setUseragent(ua);
		inf.setUsername(user.getUsername());
		userAccessInfDao.save(inf);
		req.setAttribute("useraccessinf", inf);
	}

	private void postUserInf(UserRedisInf user, HttpServletRequest req)
			throws IOException {
		UserRedisAccessInf inf = (UserRedisAccessInf) req
				.getAttribute("useraccessinf");
		if (inf != null) {
			int count = inf.getId();
			inf.setEndtime(new Date().getTime());
			userAccessInfDao.save(inf);
			userDao.save(user);
			user.setTracecount(count);
		}
		req.removeAttribute("useraccessinf");
	}

	@Override
	public void init(FilterConfig config) throws ServletException {
		WebApplicationContext context = WebApplicationContextUtils
				.getRequiredWebApplicationContext(config.getServletContext());
		userDao = context.getBean(UserDao.class);
		userAccessInfDao = context.getBean(UserAccessInfDao.class);
	}

	private void sendToLogin(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.sendRedirect(req.getContextPath() + "/login");
	}

	@Override
	public void destroy() {

	}

}
