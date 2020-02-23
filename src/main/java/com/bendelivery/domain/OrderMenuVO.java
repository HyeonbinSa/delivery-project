package com.bendelivery.domain;

public class OrderMenuVO {
	private int order_no;
	private int menu_no;
	private String menu_name;
	private int menu_price;
	private int quantity;
	public int getOrder_no() {
		return order_no;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
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
	@Override
	public String toString() {
		return "OrderMenuVO [order_no=" + order_no + ", menu_no=" + menu_no + ", menu_name=" + menu_name
				+ ", menu_price=" + menu_price + ", quantity=" + quantity + "]";
	}
	
}
