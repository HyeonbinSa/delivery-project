package com.bendelivery.service;

import java.util.List;

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
	@Override
	public List<OrderMenuVO> list(int order_no) throws Exception {
		return dao.list(order_no);
	}

}
