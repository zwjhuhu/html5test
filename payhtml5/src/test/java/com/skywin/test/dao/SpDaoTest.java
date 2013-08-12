package com.skywin.test.dao;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

import com.skywin.model.PageModel;
import com.skywin.model.ReSpInf;
import com.skywin.service.SpService;

@ContextConfiguration(locations = { "classpath:beans.xml" })
public class SpDaoTest extends AbstractJUnit4SpringContextTests {

	@Autowired
	private SpService spService;

	@Test
	public void saveTest() {
		ReSpInf inf = new ReSpInf();
		inf.setEmail("asd@123.com");
		inf.setDiscountrate(1);
		inf.setLocalid("123");
		inf.setModifieddate(new Date());
		inf.setModifieduser("asd");
		inf.setSpcode("sp123232");
		inf.setSpfullname("sp11111");
		inf.setSpname("asdsd232");
		inf.setSpstate(1);
		spService.save(inf);
	}

	@Test
	public void listTest() {
		List<ReSpInf> list = spService.list();
		for (ReSpInf inf : list) {
			System.out.println(inf);
		}
	}

	@Test
	public void listPage() {
		PageModel<ReSpInf> page = spService.findPage("from ReSpInf", null, 1,
				10);
		System.out.println(page.getTotal());
		List<ReSpInf> list = page.getDatas();
		for (ReSpInf inf : list) {
			System.out.println(inf);
		}
	}
}
