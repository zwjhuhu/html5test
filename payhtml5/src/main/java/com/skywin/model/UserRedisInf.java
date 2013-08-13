package com.skywin.model;

public class UserRedisInf extends ReUserInf {

	public static final String REDIS_PREFIX = "user.id.";

	private String uid;

	private Long firstlogintime;

	private boolean loginkeeping;

	private int tracecount;

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public Long getFirstlogintime() {
		return firstlogintime;
	}

	public void setFirstlogintime(Long firstlogintime) {
		this.firstlogintime = firstlogintime;
	}

	public int getTracecount() {
		return tracecount;
	}

	public void setTracecount(int tracecount) {
		this.tracecount = tracecount;
	}

	public boolean isLoginkeeping() {
		return loginkeeping;
	}

	public void setLoginkeeping(boolean loginkeeping) {
		this.loginkeeping = loginkeeping;
	}

	@Override
	public String toString() {
		return "UserRedisInf [uid=" + uid + ", firstlogintime="
				+ firstlogintime + ", tracecount=" + tracecount
				+ ", username()=" + getUsername() + ", name()=" + getName()
				+ "]";
	}

}