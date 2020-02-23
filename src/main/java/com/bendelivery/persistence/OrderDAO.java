package com.bendelivery.persistence;

import com.bendelivery.domain.OrderVO;

public interface OrderDAO {
	public void createOrder(OrderVO vo) throws Exception;
}	
