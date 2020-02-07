package com.bendelivery.domain;

import java.util.Date;

public class RestaurantVO {
	private int res_no;
	private String res_name;
	private Date res_regdate;
	private String res_tel;
	private String category;
	private String startTime;
	private String endTime;
	private String res_postcode;
	private String res_address;
	private String res_detailAddress;
	private String res_extraAddress;
	
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
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
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
				+ ", res_tel=" + res_tel + ", category=" + category + ", startTime=" + startTime + ", endTime="
				+ endTime + ", res_postcode=" + res_postcode + ", res_address=" + res_address + ", res_detailAddress="
				+ res_detailAddress + ", res_extraAddress=" + res_extraAddress + "]";
	}
	
	/*private int res_no;
	private String res_name;
	private String res_owner;
	private String res_phone;
	private String category;
	private String owner_number;
	private String res_postcode;
	private String res_address;
	private String res_extra_address;
	private String res_detail_address;
	private Time startTime;
	private Time endTime;
	private boolean res_status;
	public boolean isRes_status() {
		return res_status;
	}
	public void setRes_status(boolean res_status) {
		this.res_status = res_status;
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
	public String getRes_owner() {
		return res_owner;
	}
	public void setRes_owner(String res_owner) {
		this.res_owner = res_owner;
	}
	public String getRes_phone() {
		return res_phone;
	}
	public void setRes_phone(String res_phone) {
		this.res_phone = res_phone;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getOwner_number() {
		return owner_number;
	}
	public void setOwner_number(String owner_number) {
		this.owner_number = owner_number;
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
	public String getRes_extra_address() {
		return res_extra_address;
	}
	public void setRes_extra_address(String res_extra_address) {
		this.res_extra_address = res_extra_address;
	}
	public String getRes_detail_address() {
		return res_detail_address;
	}
	public void setRes_detail_address(String res_detail_address) {
		this.res_detail_address = res_detail_address;
	}
	public Time getStartTime() {
		return startTime;
	}
	public void setStartTime(Time startTime) {
		this.startTime = startTime;
	}
	public Time getEndTime() {
		return endTime;
	}
	public void setEndTime(Time endTime) {
		this.endTime = endTime;
	}

	@Override
	public String toString() {
		return "RestaurantVO [res_no=" + res_no + ", res_name=" + res_name + ", res_owner=" + res_owner + ", res_phone="
				+ res_phone + ", category=" + category + ", owner_number=" + owner_number + ", res_postcode="
				+ res_postcode + ", res_address=" + res_address + ", res_extra_address=" + res_extra_address
				+ ", res_detail_address=" + res_detail_address + ", startTime=" + startTime + ", endTime=" + endTime
				+ ", res_status=" + res_status + "]";
	}
	
	*/
	
}
