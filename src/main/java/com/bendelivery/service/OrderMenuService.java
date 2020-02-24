package com.bendelivery.service;

import java.util.List;

import com.bendelivery.domain.OrderMenuVO;

public interface OrderMenuService {
	public void createOrderMenu(OrderMenuVO vo)throws Exception;
	public List<OrderMenuVO> list(int order_no)throws Exception;
}
