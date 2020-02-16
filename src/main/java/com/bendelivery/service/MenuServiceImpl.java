package com.bendelivery.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.bendelivery.domain.MenuVO;
import com.bendelivery.persistence.MenuDAO;

@Service
public class MenuServiceImpl implements MenuService{
	@Inject
	private MenuDAO dao;
	
	private static Logger logger = LoggerFactory.getLogger(MenuGroupServiceImpl.class);
	@Override
	public void addMenu(MenuVO vo) throws Exception {
		dao.create(vo);
	}

	@Override
	public List<MenuVO> list(int res_no) throws Exception {
		return dao.list(res_no);
	}

}
