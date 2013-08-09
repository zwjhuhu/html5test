package com.skywin.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class UserFilter implements Filter {

	private static Log logger = LogFactory.getLog(UserFilter.class);
	
	@Override
	public void destroy() {

	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
//		HttpServletRequest hsq = (HttpServletRequest)req;
//		User u = (User)hsq.getSession().getAttribute("loginUser");
//		if(u==null) {
//			((HttpServletResponse)resp).sendRedirect(hsq.getContextPath()+"/login");
//		}
		logger.debug("start");
		System.out.println("asdasd");
		chain.doFilter(req, resp);
		logger.debug("end");
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {

	}

}
