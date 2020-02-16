package com.bendelivery.service;

import java.util.List;

import com.bendelivery.domain.MenuVO;

public interface MenuService {
	public void addMenu(MenuVO vo)throws Exception;
	public List<MenuVO> list(int res_no)throws Exception;
}
