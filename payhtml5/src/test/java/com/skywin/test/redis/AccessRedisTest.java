package com.skywin.test.redis;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

import com.skywin.model.UserRedisAccessInf;
import com.skywin.redis.dao.UserAccessInfDao;

@ContextConfiguration(locations = { "classpath:beans.xml" })
public class AccessRedisTest extends AbstractJUnit4SpringContextTests {

	@Autowired
	private UserAccessInfDao userAccessInfDao;

	@Test
	public void userAddTest() {
//		UserRedisInf user = new UserRedisInf();
//		String uid = UUID.randomUUID().toString();
//		user.setUid(uid);
//		System.out.println(UserRedisInf.REDIS_PREFIX+uid);
//		user.setFirstlogintime(new Date().getTime());
//		user.setUsername("asdsd");
//		user.setPassword("123123");
//		user.setTracecount(3);
//		userDao.save(user);
	}
	
	@Test
	public void userGetTest() {
//		UserRedisInf user = userDao.read("90ffdd15-13cc-4e7f-a282-10464f639861");
//		System.out.println(user);
	}
	
	@Test
	public void userDeleteTest() {
//		userDao.delete("90ffdd15-13cc-4e7f-a282-10464f639861");
	}
	
	@Test
	public void userTest() {
//		UserRedisInf user = new UserRedisInf();
//		String uid = UUID.randomUUID().toString();
//		user.setUid(uid);
//		System.out.println(UserRedisInf.REDIS_PREFIX+uid);
//		user.setFirstlogintime(new Date().getTime());
//		user.setUsername("asdsd");
//		user.setPassword("123123");
//		user.setTracecount(3);
//		RedisSerializer<UserRedisInf> valueSerializer = new JacksonJsonRedisSerializer(
//				UserRedisInf.class);
//		byte[] bs = valueSerializer.serialize(user);
//		UserRedisInf tmp = valueSerializer.deserialize(bs);
//		System.out.println(tmp);
	}
	
	@Test
	public void findAllTest() {
		String username = "test";
		List<UserRedisAccessInf> list = userAccessInfDao.readByUser(username);
		for(UserRedisAccessInf inf:list){
			System.out.println(inf);
		}
//		UserRedisInf user = new UserRedisInf();
//		String uid = UUID.randomUUID().toString();
//		user.setUid(uid);
//		System.out.println(UserRedisInf.REDIS_PREFIX+uid);
//		user.setFirstlogintime(new Date().getTime());
//		user.setUsername("asdsd");
//		user.setPassword("123123");
//		user.setTracecount(3);
//		RedisSerializer<UserRedisInf> valueSerializer = new JacksonJsonRedisSerializer(
//				UserRedisInf.class);
//		byte[] bs = valueSerializer.serialize(user);
//		UserRedisInf tmp = valueSerializer.deserialize(bs);
//		System.out.println(tmp);
	}
	

}
