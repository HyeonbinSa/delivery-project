package com.bendelivery.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bendelivery.domain.MenuVO;
import com.bendelivery.persistence.MenuDAO;

@Service
public class MenuServiceImpl implements MenuService{
	@Inject
	private MenuDAO dao;
	
	@Override
	public void addMenu(MenuVO vo) throws Exception {
		dao.create(vo);
	}

	@Override
	public List<MenuVO> list(int res_no) throws Exception {
		return dao.list(res_no);
	}

}
