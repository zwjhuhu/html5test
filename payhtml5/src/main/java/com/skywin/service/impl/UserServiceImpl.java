package com.skywin.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skywin.dao.ReUserInfDao;
import com.skywin.model.ReUserInf;
import com.skywin.service.UserService;
import com.skywin.util.Encrypt;

@Service("userService")
public class UserServiceImpl implements UserService {

	private static final Log logger = LogFactory.getLog(UserServiceImpl.class);

	private ReUserInfDao userDao;

	@Autowired
	public void setUserDao(ReUserInfDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public ReUserInf save(ReUserInf user) {
		ReUserInf t = new ReUserInf();
		BeanUtils.copyProperties(user, t);
		t.setPassword(Encrypt.md5(user.getPassword()));
		t.setRegistertime(new Date());
		userDao.save(t);
		BeanUtils.copyProperties(t, user);
		return user;
	}

	@Override
	public ReUserInf login(ReUserInf user) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("username", user.getUsername());
		params.put("password", Encrypt.md5(user.getPassword()));
		ReUserInf t = userDao
				.get("from ReUserInf t where t.username = :username and t.password = :password",
						params);
		if (t != null) {
			logger.debug(t.getUsername() + "---" + "login success!");
			return t;
		}else
			logger.debug(t.getUsername() + "---" + "login fail!");
			
		return null;
	}

}
