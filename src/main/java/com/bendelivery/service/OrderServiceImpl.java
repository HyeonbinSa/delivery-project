package com.bendelivery.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bendelivery.domain.OrderVO;
import com.bendelivery.persistence.OrderDAO;

@Service
public class OrderServiceImpl implements OrderService{
	@Inject
	private OrderDAO dao;
	@Override
	public void createOrder(OrderVO vo) throws Exception {
		 dao.createOrder(vo);
	}

}
