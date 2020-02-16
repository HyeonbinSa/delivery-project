package com.bendelivery.persistence;

import java.util.List;

import com.bendelivery.domain.MenuVO;


public interface MenuDAO {
	public void create(MenuVO vo)throws Exception;
 	public List<MenuVO> list(int res_no)throws Exception;
}
