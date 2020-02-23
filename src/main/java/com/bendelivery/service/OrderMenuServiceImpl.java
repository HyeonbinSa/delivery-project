package com.bendelivery.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bendelivery.domain.OrderMenuVO;
import com.bendelivery.persistence.OrderMenuDAO;

@Service
public class OrderMenuServiceImpl implements OrderMenuService{
	@Inject
	private OrderMenuDAO dao;
	@Override
	public void createOrderMenu(OrderMenuVO vo) throws Exception {
		dao.createOrderMenu(vo);
	}

}
