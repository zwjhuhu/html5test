package com.skywin.service;

import com.skywin.model.ReUserInf;


public interface UserService {

	public ReUserInf save(ReUserInf user);

	public ReUserInf login(ReUserInf user);

}
