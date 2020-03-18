package com.bendelivery.domain;

import java.util.Date;

public class OrderVO {
	// 주문을 담당하는 객체
	/* 1. 장바구니 내용 (식당 no)
	 * 메뉴no, 메뉴 이름, 메뉴 가격, 개수) -> 오더 메뉴로 넘어
	 *2. 회원 정보 (회원 아이디)
	 *3. 주문정보 (주소, 상세 주소, 핸드폰 번호, 요청사항)
	 *4. 식당 확인 / 거절 / 
	 *5. 주문 날짜 및 시간 
	 *6. order 넘버 
	 */
	private int order_no;
	private int res_no ;
	private String member_id;
	private String order_address;
	private String order_detail_address;
	private String order_phone;
	private String order_request;
	private String order_status;
	private Date order_date;
	private String payment;
	//추가 - 리뷰 남겼는지 확
	private String review_status;
	private Date confirm_time;
	
	public Date getConfirm_time() {
		return confirm_time;
	}
	public void setConfirm_time(Date confirm_time) {
		this.confirm_time = confirm_time;
	}
	public String getReview_status() {
		return review_status;
	}
	public void setReview_status(String review_status) {
		this.review_status = review_status;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public int getOrder_no() {
		return order_no;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}
	public int getRes_no() {
		return res_no;
	}
	public void setRes_no(int res_no) {
		this.res_no = res_no;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getOrder_address() {
		return order_address;
	}
	public void setOrder_address(String order_address) {
		this.order_address = order_address;
	}
	public String getOrder_detail_address() {
		return order_detail_address;
	}
	public void setOrder_detail_address(String order_detail_address) {
		this.order_detail_address = order_detail_address;
	}
	public String getOrder_phone() {
		return order_phone;
	}
	public void setOrder_phone(String order_phone) {
		this.order_phone = order_phone;
	}
	public String getOrder_request() {
		return order_request;
	}
	public void setOrder_request(String order_request) {
		this.order_request = order_request;
	}
	public String getOrder_status() {
		return order_status;
	}
	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}
	@Override
	public String toString() {
		return "OrderVO [order_no=" + order_no + ", res_no=" + res_no + ", member_id=" + member_id + ", order_address="
				+ order_address + ", order_detail_address=" + order_detail_address + ", order_phone=" + order_phone
				+ ", order_request=" + order_request + ", order_status=" + order_status + ", order_date=" + order_date
				+ "]";
	}
	
	
}
