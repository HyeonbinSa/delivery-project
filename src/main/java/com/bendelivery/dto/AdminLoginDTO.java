package com.bendelivery.dto;

public class AdminLoginDTO {
	private String admin_id;
	private String admin_pw;
	private boolean useCookie;
	
	@Override
	public String toString() {
		return "AdminLoginDTO [admin_id=" + admin_id + ", admin_pw=" + admin_pw + ", useCookie=" + useCookie + "]";
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_pw() {
		return admin_pw;
	}
	public void setAdmin_pw(String admin_pw) {
		this.admin_pw = admin_pw;
	}
	public boolean isUseCookie() {
		return useCookie;
	}
	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}
	
}
