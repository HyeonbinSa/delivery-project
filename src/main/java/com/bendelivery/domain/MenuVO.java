package com.bendelivery.domain;

public class MenuVO {
	// 메뉴에 대한 VO
	// 0. 순서, 번호 menu_no
	// 1. 메뉴 그룹  menugroup_no
	// 2. 메뉴 이름  menu_name
	// 3. 메뉴 가격  menu_price
	// 4. 메뉴 구성  menu_component
	// 5. 메뉴 설명  menu_info
	private int res_no;
	private int menugroup_no;
	private int menu_no;
	private String menu_name;
	private int menu_price;
	private String menu_component;
	private String menu_info;

	public int getRes_no() {
		return res_no;
	}
	public void setRes_no(int res_no) {
		this.res_no = res_no;
	}
	public int getMenugroup_no() {
		return menugroup_no;
	}
	public void setMenugroup_no(int menugroup_no) {
		this.menugroup_no = menugroup_no;
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
	public String getMenu_component() {
		return menu_component;
	}
	public void setMenu_component(String menu_component) {
		this.menu_component = menu_component;
	}
	public String getMenu_info() {
		return menu_info;
	}
	public void setMenu_info(String menu_info) {
		this.menu_info = menu_info;
	}
	@Override
	public String toString() {
		return "MenuVO [res_no=" + res_no + ", menugroup_no=" + menugroup_no + ", menu_no=" + menu_no + ", menu_name="
				+ menu_name + ", menu_price=" + menu_price + ", menu_component=" + menu_component + ", menu_info="
				+ menu_info + "]";
	}
	
	
	
}
