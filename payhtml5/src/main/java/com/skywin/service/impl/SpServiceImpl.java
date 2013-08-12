package com.skywin.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skywin.dao.ReSpInfDao;
import com.skywin.model.PageModel;
import com.skywin.model.ReSpInf;
import com.skywin.service.SpService;

@Service("spService")
public class SpServiceImpl implements SpService {

	private ReSpInfDao spDao;

	@Autowired
	public void setSpDao(ReSpInfDao spDao) {
		this.spDao = spDao;
	}

	@Override
	public void save(ReSpInf sp) {
		spDao.save(sp);
	}

	@Override
	public void update(ReSpInf sp) {
		spDao.update(sp);

	}

	@Override
	public void delete(long id) {
		ReSpInf inf = spDao.load(ReSpInf.class, id);
		spDao.delete(inf);

	}

	@Override
	public ReSpInf load(long id) {
		return spDao.load(ReSpInf.class, id);
	}

	@Override
	public List<ReSpInf> list() {
		return spDao.find("from ReSpInf");
	}

	@Override
	public PageModel<ReSpInf> findPage(String hql, Map<String, Object> params,
			int page, int size) {
		PageModel<ReSpInf> pageModel = new PageModel<ReSpInf>();
		pageModel.setPage(page);
		pageModel.setSize(size);
		List<ReSpInf> data = new ArrayList<ReSpInf>();
		long total = 0;
		String totalHql = "select count(*) " + hql;
		if (params == null) {
			total = spDao.count(totalHql);
			data = spDao.find(hql, page, size);
		} else {
			total = spDao.count(totalHql, params);
			data = spDao.find(hql, params, page, size);
		}
		pageModel.setTotal(total);
		pageModel.setDatas(data);
		return pageModel;
	}

}
