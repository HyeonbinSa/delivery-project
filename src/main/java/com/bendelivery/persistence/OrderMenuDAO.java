package com.bendelivery.persistence;

import java.util.List;

import com.bendelivery.domain.OrderMenuVO;

public interface OrderMenuDAO {
	public void createOrderMenu(OrderMenuVO vo) throws Exception;
	public List<OrderMenuVO> list(int order_no)throws Exception;
}	
