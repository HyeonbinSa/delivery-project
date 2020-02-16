package com.bendelivery.persistence;

import java.util.List;

import com.bendelivery.domain.MenuGroupVO;

public interface MenuGroupDAO {
 	public void create(MenuGroupVO vo)throws Exception;
 	public List<MenuGroupVO> list(int res_no)throws Exception;
}
