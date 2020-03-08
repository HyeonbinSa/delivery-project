package com.bendelivery.domain;

public class ResOperationVO {
	// 가게 운영 정보 테이블
	private int res_no;
	private String start_time;
	private String end_time;
	private int minimum_price;
	private boolean pay_here;
	private boolean pay_cash;
	private boolean pay_card;
	
	public boolean isPay_here() {
		return pay_here;
	}
	public void setPay_here(boolean pay_here) {
		this.pay_here = pay_here;
	}
	public boolean isPay_cash() {
		return pay_cash;
	}
	public void setPay_cash(boolean pay_cash) {
		this.pay_cash = pay_cash;
	}
	public boolean isPay_card() {
		return pay_card;
	}
	public void setPay_card(boolean pay_card) {
		this.pay_card = pay_card;
	}
	public int getRes_no() {
		return res_no;
	}
	public void setRes_no(int res_no) {
		this.res_no = res_no;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	public int getMinimum_price() {
		return minimum_price;
	}
	public void setMinimum_price(int minimum_price) {
		this.minimum_price = minimum_price;
	}
	
	@Override
	public String toString() {
		return "ResOperationVO [res_no=" + res_no + ", start_time=" + start_time + ", end_time=" + end_time
				+ ", minimum_price=" + minimum_price + "]";
	}
	
	
}
