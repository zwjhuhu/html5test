package com.skywin.service;

import java.util.List;
import java.util.Map;

import com.skywin.model.PageModel;
import com.skywin.model.ReSpInf;

public interface SpService {
	public void save(ReSpInf user);

	public void update(ReSpInf user);

	public void delete(long id);

	public ReSpInf load(long id);

	public List<ReSpInf> list();

	public PageModel<ReSpInf> findPage(String hql, Map<String, Object> params,
			int page, int size);

}
