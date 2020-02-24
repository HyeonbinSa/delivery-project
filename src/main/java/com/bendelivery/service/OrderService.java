package com.bendelivery.service;

import java.util.List;

import com.bendelivery.domain.OrderVO;

public interface OrderService {
	public void createOrder(OrderVO vo)throws Exception;
	public List<OrderVO> list(String member_id)throws Exception;
}
