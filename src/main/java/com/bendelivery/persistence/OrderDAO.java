package com.bendelivery.persistence;

import java.util.List;

import com.bendelivery.domain.OrderVO;

public interface OrderDAO {
	public void createOrder(OrderVO vo) throws Exception;
	public List<OrderVO> list(String member_id)throws Exception;
}	
