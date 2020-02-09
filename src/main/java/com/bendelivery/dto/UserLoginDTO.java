package com.bendelivery.dto;

public class UserLoginDTO {
	private String member_id;
	private String member_pw;
	private boolean useCookie;
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public boolean isUseCookie() {
		return useCookie;
	}
	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}
	@Override
	public String toString() {
		return "UserLoginDTO [member_id=" + member_id + ", member_pw=" + member_pw + ", useCookie=" + useCookie + "]";
	}
	
	
	
}
