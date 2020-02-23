package com.bendelivery.service;

import com.bendelivery.domain.OrderVO;

public interface OrderService {
	public void createOrder(OrderVO vo)throws Exception;
}
