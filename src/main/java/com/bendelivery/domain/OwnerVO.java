package com.bendelivery.domain;

public class OwnerVO {
	//사장님 계정 정보 
	private int owner_no;
	private String owner_name;
	private String owner_phone;
	private String owner_id;
	private String owner_pw;
	private String owner_number;
	
	public String getOwner_number() {
		return owner_number;
	}
	public void setOwner_number(String owner_number) {
		this.owner_number = owner_number;
	}
	public int getOwner_no() {
		return owner_no;
	}
	public void setOwner_no(int owner_no) {
		this.owner_no = owner_no;
	}
	public String getOwner_name() {
		return owner_name;
	}
	public void setOwner_name(String owner_name) {
		this.owner_name = owner_name;
	}
	public String getOwner_phone() {
		return owner_phone;
	}
	public void setOwner_phone(String owner_phone) {
		this.owner_phone = owner_phone;
	}
	public String getOwner_id() {
		return owner_id;
	}
	public void setOwner_id(String owner_id) {
		this.owner_id = owner_id;
	}
	public String getOwner_pw() {
		return owner_pw;
	}
	public void setOwner_pw(String owner_pw) {
		this.owner_pw = owner_pw;
	}
	@Override
	public String toString() {
		return "OwnerVO [owner_no=" + owner_no + ", owner_name=" + owner_name + ", owner_phone=" + owner_phone
				+ ", owner_id=" + owner_id + ", owner_pw=" + owner_pw + ", owner_number=" + owner_number + "]";
	}
	
}
