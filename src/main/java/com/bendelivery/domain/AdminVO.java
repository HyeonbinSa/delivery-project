package com.bendelivery.domain;

import java.sql.Date;

public class AdminVO {
	private String admin_id;
	private String admin_pw;
	private Date admin_regdate;
	private static final String ROLE = "ADMIN";

	public String getRole() {
		return ROLE;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	@Override
	public String toString() {
		return "AdminVO [admin_id=" + admin_id + ", admin_pw=" + admin_pw + ", admin_regdate=" + admin_regdate + "]";
	}
	public String getAdmin_pw() {
		return admin_pw;
	}
	public void setAdmin_pw(String admin_pw) {
		this.admin_pw = admin_pw;
	}
	public Date getAdmin_regdate() {
		return admin_regdate;
	}
	public void setAdmin_regdate(Date admin_regdate) {
		this.admin_regdate = admin_regdate;
	}
	
	
}
