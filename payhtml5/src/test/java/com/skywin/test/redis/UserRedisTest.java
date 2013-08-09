package com.skywin.test.redis;

import org.junit.Test;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

@ContextConfiguration(locations = { "classpath:context-test.xml" })
public class UserRedisTest extends AbstractJUnit4SpringContextTests {


	@Test
	public void userTest() {

	}
}
