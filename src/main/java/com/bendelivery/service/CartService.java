package com.bendelivery.service;

import java.util.List;

import com.bendelivery.domain.CartVO;

public interface CartService {
	public void addCartItem(CartVO vo)throws Exception;
	public void deleteById(String session_id)throws Exception;
	public void updateByQuan(CartVO vo)throws Exception;
	public void deleteByButton(CartVO vo)throws Exception;
	public void deleteByRes(CartVO vo)throws Exception;
	public List<CartVO> list(String session_id)throws Exception;
	public CartVO checkMenu(CartVO vo)throws Exception;
	public void updateMinus(CartVO vo)throws Exception;
	public void updatePlus(CartVO vo)throws Exception;
	public List<Integer> getRestuarantNo(String session_id)throws Exception;
}
