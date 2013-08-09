package com.skywin;

import com.skywin.model.ReUserInf;

public class UserInf extends ReUserInf {
	public static final String REDIS_PREFIX = "user.id";
	
	private String uuid;

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
}
