package com.skywin.test.dao;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

import com.skywin.model.ReUserInf;
import com.skywin.service.UserService;

@ContextConfiguration(locations = { "classpath:beans.xml" })
public class UserDaoTest extends AbstractJUnit4SpringContextTests {

	@Autowired
	private UserService userService;

	@Test
	public void saveTest() {
		ReUserInf user = new ReUserInf();
		user.setName("测试");
		user.setUsername("test1");
		user.setPassword("123456");
		user.setRoleid(1);
		
		ReUserInf t = userService.save(user);
	}
	
	@Test
	public void loginTest() {
		ReUserInf user = new ReUserInf();	
		user.setUsername("test1");
		user.setPassword("123456");
		user.setRoleid(1);
		ReUserInf t = userService.login(user);
		Assert.assertNotNull(t);
		System.out.println(t.getUsername());
		System.out.println(t.getName());
	}
}
