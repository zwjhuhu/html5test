package com.skywin.test.dao;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

import com.skywin.service.SpService;

@ContextConfiguration(locations = { "classpath:beans.xml" })
public class SpDaoTest extends AbstractJUnit4SpringContextTests {

	@Autowired
	private SpService spService;

	@Test
	public void saveTest() {
		ReSpInf inf = new ReSpInf();
//		spService.save(inf);
	}
	
	@Test
	public void listTest() {
//		ReUserInf user = new ReUserInf();	
//		user.setUsername("test1");
//		user.setPassword("123456");
//		user.setRoleid(1);
//		ReUserInf t = userService.login(user);
//		Assert.assertNotNull(t);
//		System.out.println(t.getUsername());
//		System.out.println(t.getName());
	}
}
