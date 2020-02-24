package com.bendelivery.domain;

public class LikeVO {
	private int res_no;
	private int member_no;
	public int getRes_no() {
		return res_no;
	}
	public void setRes_no(int res_no) {
		this.res_no = res_no;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	@Override
	public String toString() {
		return "LikeVO [res_no=" + res_no + ", member_no=" + member_no + "]";
	}
	
	
}
