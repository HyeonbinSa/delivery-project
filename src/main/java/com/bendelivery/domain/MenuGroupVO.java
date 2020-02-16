package com.bendelivery.domain;

public class MenuGroupVO {
	//------메뉴 그룹 ----------
		// 1. res_no
		// 2. menugroup_no
		// 3. menugroup_name
	// 해당 식당에 대한 MenuGroup
	private int res_no; 
	private int menugroup_no;
	private String menugroup_name;
	
	
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
	public String getMenugroup_name() {
		return menugroup_name;
	}
	public void setMenugroup_name(String menugroup_name) {
		this.menugroup_name = menugroup_name;
	}
	@Override
	public String toString() {
		return "MenuGroupVO [res_no=" + res_no + ", menugroup_no=" + menugroup_no + ", menugroup_name=" + menugroup_name
				+ "]";
	}
	
	
	
}
