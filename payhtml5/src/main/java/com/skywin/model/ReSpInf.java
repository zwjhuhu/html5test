package com.skywin.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "re_sp_inf")
public class ReSpInf implements Serializable {

	@Id
	@GeneratedValue
	private Long spid;

	@NotEmpty(message="编码不能为空")
	@Column(unique = true, nullable = false)
	private String spcode;

	private String spfullname;

	@NotEmpty(message="名称不能为空")
	private String spname;

	private String localid;

	private Integer spstate;

	private Integer discountrate;

	@Temporal(TemporalType.TIMESTAMP)
	private Date modifieddate;

	private String modifieduser;
	
	@Email(message="邮件格式不正确")
	private String email;

	public Long getSpid() {
		return spid;
	}

	public void setSpid(Long spid) {
		this.spid = spid;
	}

	public String getSpcode() {
		return spcode;
	}

	public void setSpcode(String spcode) {
		this.spcode = spcode;
	}

	public String getSpfullname() {
		return spfullname;
	}

	public void setSpfullname(String spfullname) {
		this.spfullname = spfullname;
	}

	public String getSpname() {
		return spname;
	}

	public void setSpname(String spname) {
		this.spname = spname;
	}

	public String getLocalid() {
		return localid;
	}

	public void setLocalid(String localid) {
		this.localid = localid;
	}

	public Integer getSpstate() {
		return spstate;
	}

	public void setSpstate(Integer spstate) {
		this.spstate = spstate;
	}

	public Integer getDiscountrate() {
		return discountrate;
	}

	public void setDiscountrate(Integer discountrate) {
		this.discountrate = discountrate;
	}

	public Date getModifieddate() {
		return modifieddate;
	}

	public void setModifieddate(Date modifieddate) {
		this.modifieddate = modifieddate;
	}

	public String getModifieduser() {
		return modifieduser;
	}

	public void setModifieduser(String modifieduser) {
		this.modifieduser = modifieduser;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "ReSpInf [spid=" + spid + ", spcode=" + spcode + ", spfullname="
				+ spfullname + ", spname=" + spname + "]";
	}

	
}