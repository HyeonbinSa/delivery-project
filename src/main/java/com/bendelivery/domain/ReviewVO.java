package com.bendelivery.domain;

import java.util.Date;

public class ReviewVO {
	private int review_no;			//리뷰 번호 
	private int star;				//별점 
	private String review_content;  // 리뷰 내용 
	private int member_no;			// 회원 번호 
	private int res_no;				// 식당 번호 
	private int order_no;			// 오더 번호
	private Date reg_date;		 	// 댓글 등록일
	public int getReview_no() {
		return review_no;
	}
	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public int getRes_no() {
		return res_no;
	}
	public void setRes_no(int res_no) {
		this.res_no = res_no;
	}
	public int getOrder_no() {
		return order_no;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	@Override
	public String toString() {
		return "ReviewVO [review_no=" + review_no + ", star=" + star + ", review_content=" + review_content
				+ ", member_no=" + member_no + ", res_no=" + res_no + ", order_no=" + order_no + ", reg_date="
				+ reg_date + "]";
	}
	
	
	
}
