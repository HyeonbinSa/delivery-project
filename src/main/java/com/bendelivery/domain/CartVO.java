package com.bendelivery.domain;

public class CartVO {
	private int res_no;
	private int menu_no;
	private String menu_name;
	private int menu_price;
	private int quantity;
	private String session_id;
	
	@Override
	public String toString() {
		return "CartVO [res_no=" + res_no + ", menu_no=" + menu_no + ", menu_name=" + menu_name + ", menu_price="
				+ menu_price + ", quantity=" + quantity + ", session_id=" + session_id + "]";
	}
	public int getRes_no() {
		return res_no;
	}
	public void setRes_no(int res_no) {
		this.res_no = res_no;
	}
	public int getMenu_no() {
		return menu_no;
	}
	public void setMenu_no(int menu_no) {
		this.menu_no = menu_no;
	}
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public int getMenu_price() {
		return menu_price;
	}
	public void setMenu_price(int menu_price) {
		this.menu_price = menu_price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getSession_id() {
		return session_id;
	}
	public void setSession_id(String session_id) {
		this.session_id = session_id;
	}
}
