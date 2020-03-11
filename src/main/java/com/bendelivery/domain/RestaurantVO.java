package com.bendelivery.domain;

import java.util.Date;

public class RestaurantVO {
	private int res_no;
	private String res_name;
	private Date res_regdate;
	private String res_tel;
	private String category;
	// operation 테이블로 이동 
	//private String startTime;
	//private String endTime;
	private String res_postcode;
	private String res_address;
	private String res_detailAddress;
	private String res_extraAddress;
	private String permission;
	private Date permit_date;
	private String permit_admin;
	private String res_intro;
	private String res_thumbnail;
	
	public String getRes_thumbnail() {
		return res_thumbnail;
	}
	public void setRes_thumbnail(String res_thumbnail) {
		this.res_thumbnail = res_thumbnail;
	}
	public String getRes_intro() {
		return res_intro;
	}
	public void setRes_intro(String res_intro) {
		this.res_intro = res_intro;
	}
	public Date getPermit_date() {
		return permit_date;
	}
	public void setPermit_date(Date permit_date) {
		this.permit_date = permit_date;
	}
	public String getPermit_admin() {
		return permit_admin;
	}
	public void setPermit_admin(String permit_admin) {
		this.permit_admin = permit_admin;
	}
	public String getPermission() {
		return permission;
	}
	public void setPermission(String permission) {
		this.permission = permission;
	}
	private int owner_no;
	
	public int getOwner_no() {
		return owner_no;
	}
	public void setOwner_no(int owner_no) {
		this.owner_no = owner_no;
	}
	public String getRes_postcode() {
		return res_postcode;
	}
	public void setRes_postcode(String res_postcode) {
		this.res_postcode = res_postcode;
	}
	public String getRes_address() {
		return res_address;
	}
	public void setRes_address(String res_address) {
		this.res_address = res_address;
	}
	public String getRes_detailAddress() {
		return res_detailAddress;
	}
	public void setRes_detailAddress(String res_detailAddress) {
		this.res_detailAddress = res_detailAddress;
	}
	public String getRes_extraAddress() {
		return res_extraAddress;
	}
	public void setRes_extraAddress(String res_extraAddress) {
		this.res_extraAddress = res_extraAddress;
	}
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getRes_no() {
		return res_no;
	}
	public void setRes_no(int res_no) {
		this.res_no = res_no;
	}
	public String getRes_name() {
		return res_name;
	}
	public void setRes_name(String res_name) {
		this.res_name = res_name;
	}
	public Date getRes_regdate() {
		return res_regdate;
	}
	public void setRes_regdate(Date res_regdate) {
		this.res_regdate = res_regdate;
	}
	public String getRes_tel() {
		return res_tel;
	}
	public void setRes_tel(String res_tel) {
		this.res_tel = res_tel;
	}
	@Override
	public String toString() {
		return "RestaurantVO [res_no=" + res_no + ", res_name=" + res_name + ", res_regdate=" + res_regdate
				+ ", res_tel=" + res_tel + ", category=" + category + ", res_postcode=" + res_postcode
				+ ", res_address=" + res_address + ", res_detailAddress=" + res_detailAddress + ", res_extraAddress="
				+ res_extraAddress + ", permission=" + permission + ", permit_date=" + permit_date + ", permit_admin="
				+ permit_admin + ", res_intro=" + res_intro + ", res_thumbnail=" + res_thumbnail + ", owner_no="
				+ owner_no + "]";
	}
}
