package com.bendelivery.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.bendelivery.domain.MenuGroupVO;
import com.bendelivery.persistence.MenuGroupDAO;

@Service
public class MenuGroupServiceImpl implements MenuGroupService {
	@Inject
	private MenuGroupDAO dao;
	
	private static Logger logger = LoggerFactory.getLogger(MenuGroupServiceImpl.class);

	
	@Override
	public void addMenuGroup(MenuGroupVO vo) throws Exception {
		logger.info("Menu Group Add -------------------------------");
		dao.create(vo);
	}

	@Override
	public List<MenuGroupVO> list(int res_no) throws Exception {
		logger.info("Menu Group get List -------------------------------");
		return dao.list(res_no);
	}

}
