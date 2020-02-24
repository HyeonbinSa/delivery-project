package com.bendelivery.service;

import java.util.List;

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
	@Override
	public List<OrderVO> list(String member_id) throws Exception {
		return dao.list(member_id);
	}

}
