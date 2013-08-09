package com.skywin.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "re_sp_inf")
public class ReSpInf implements Serializable {

	@Id
	@GeneratedValue
	private Long spid;

	private String spcode;

	private String spfullname;

	private String spname;

	private String localid;

	private Integer spstate;

	private Integer discountrate;

	@Temporal(TemporalType.TIMESTAMP)
	private Date modifieddate;

	private String modifieduser;

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

}