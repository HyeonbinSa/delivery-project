package com.bendelivery.persistence;

import java.util.List;

import com.bendelivery.domain.OrderVO;

public interface OrderDAO {
	public void createOrder(OrderVO vo) throws Exception;
	public List<OrderVO> list(String member_id)throws Exception;
	public OrderVO getOrder(int order_no)throws Exception;
	public void updateForReview(int order_no)throws Exception;
	public List<OrderVO> listByRes(int res_no)throws Exception;
	public List<OrderVO> listByResAndStatus(OrderVO vo)throws Exception;
	public void updateIng(int order_no)throws Exception;
	public void updateDone(int order_no)throws Exception;
}	
