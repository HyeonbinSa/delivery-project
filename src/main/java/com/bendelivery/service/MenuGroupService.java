package com.bendelivery.service;

import java.util.List;

import com.bendelivery.domain.MenuGroupVO;

public interface MenuGroupService {
	public void addMenuGroup(MenuGroupVO vo)throws Exception;
	public List<MenuGroupVO> list(int res_no)throws Exception;
}
