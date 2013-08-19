package com.skywin.service;

import java.util.List;

import com.skywin.model.ReUserInf;


public interface UserService {

	public ReUserInf save(ReUserInf user);

	public ReUserInf login(ReUserInf user);
	
	public List<ReUserInf> findAll();

}
