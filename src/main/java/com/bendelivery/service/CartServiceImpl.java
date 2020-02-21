package com.bendelivery.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bendelivery.domain.CartVO;
import com.bendelivery.persistence.CartDAO;

@Service
public class CartServiceImpl implements CartService{
	@Inject
	private CartDAO dao;
	
	
	@Override
	public void addCartItem(CartVO vo) throws Exception {
		dao.create(vo);
	}

	@Override
	public void deleteById(String session_id) throws Exception {
		dao.deleteById(session_id);
	}

	@Override
	public void updateByQuan(CartVO vo) throws Exception {
		dao.updateByQuan(vo);
	}

	@Override
	public void deleteByButton(CartVO vo) throws Exception {
		dao.deleteByButton(vo);
	}

	@Override
	public void deleteByRes(CartVO vo) throws Exception {
		dao.deleteByRes(vo);
	}

	@Override
	public List<CartVO> list(String session_id) throws Exception {
		return dao.list(session_id);
	}

	@Override
	public CartVO checkMenu(CartVO vo) throws Exception {
		return dao.checkMenu(vo);
	}

	@Override
	public void updateMinus(CartVO vo) throws Exception {
		dao.updateMinus(vo);
	}

	@Override
	public void updatePlus(CartVO vo) throws Exception {
		dao.updatePlus(vo);
	}

	@Override
	public List<Integer> getRestuarantNo(String session_id) throws Exception {
		return dao.getRestuarantNo(session_id);
	}

}
