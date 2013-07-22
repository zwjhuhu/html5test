package com.skywin.test;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

import com.skywin.test.dao.User;
import com.skywin.test.dao.UserDao;

@ContextConfiguration(locations = { "classpath:context-test.xml" })
public class RedisTest extends AbstractJUnit4SpringContextTests {

	@Autowired
	private UserDao userDao;

	@Test
	public void firstTest() {
		// -------------- Create ---------------
		String uid = "u123456";
		String address1 = "上海";
		User user = new User();
		user.setAddress(address1);
		user.setUid(uid);
		userDao.save(user);

		// ---------------Read ---------------
		user = userDao.read(uid);

		assertEquals(address1, user.getAddress());

		// --------------Update ------------
		String address2 = "北京";
		user.setAddress(address2);
		userDao.save(user);

		user = userDao.read(uid);

		assertEquals(address2, user.getAddress());

		// --------------Delete ------------
		userDao.delete(uid);
		user = userDao.read(uid);
		assertNull(user);
	}
}
