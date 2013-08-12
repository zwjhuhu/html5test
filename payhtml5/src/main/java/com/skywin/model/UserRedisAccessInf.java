package com.skywin.model;

import java.io.Serializable;

public class UserRedisAccessInf implements Serializable {

	public static final String REDIS_PREFIX = "user.access.";
	private int id;
	private String ip;
	private String username;
	private String url;
	private String useragent;
	private Long starttime;
	private Long endtime;

	public int getId() {
		return id;
	}

	public void setId(int id) {
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

	public Long getStarttime() {
		return starttime;
	}

	public void setStarttime(Long starttime) {
		this.starttime = starttime;
	}

	public Long getEndtime() {
		return endtime;
	}

	public void setEndtime(Long endtime) {
		this.endtime = endtime;
	}

	@Override
	public String toString() {
		return "UserRedisAccessInf [id=" + id + ", ip=" + ip + ", username="
				+ username + ", url=" + url + ", useragent=" + useragent
				+ ", starttime=" + starttime + ", endtime=" + endtime + "]";
	}

}