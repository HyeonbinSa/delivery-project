package com.bendelivery.domain;

import java.util.Date;

public class ReplyVO {
	private int reply_no;			// 답변 번호 
	private int review_no;			// 리뷰 번호 
	private int res_no;				// 식당 번호
	private String reply_content;	// 답변 내용 
	private Date reg_date;			// 등록 일자
	
	public int getReply_no() {
		return reply_no;
	}
	public void setReply_no(int reply_no) {
		this.reply_no = reply_no;
	}
	public int getReview_no() {
		return review_no;
	}
	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}
	public int getRes_no() {
		return res_no;
	}
	public void setRes_no(int res_no) {
		this.res_no = res_no;
	}
	public String getReply_content() {
		return reply_content;
	}
	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	@Override
	public String toString() {
		return "ReplyVO [reply_no=" + reply_no + ", review_no=" + review_no + ", res_no=" + res_no + ", reply_content="
				+ reply_content + ", reg_date=" + reg_date + "]";
	}
}
