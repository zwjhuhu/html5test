package com.skywin.model;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class UserRedisAccessInf implements Serializable {

	public static final String REDIS_PREFIX = "user.access.";
	private String id;
	private String ip;
	private String username;
	private String url;
	private String useragent;
	private Date starttime;
	private Date endtime;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getUseragent() {
		return useragent;
	}

	public void setUseragent(String useragent) {
		this.useragent = useragent;
	}

	public Date getStarttime() {
		return starttime;
	}

	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}

	public Date getEndtime() {
		return endtime;
	}

	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}

	@Override
	public String toString() {
		return "UserRedisAccessInf [id=" + id + ", ip=" + ip + ", username="
				+ username + ", url=" + url + ", useragent=" + useragent
				+ ", starttime=" + starttime + ", endtime=" + endtime + "]";
	}

}