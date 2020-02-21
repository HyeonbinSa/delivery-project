package com.bendelivery.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.bendelivery.domain.CartVO;
import com.bendelivery.service.CartService;

@RestController
@RequestMapping("/cart")
public class CartController {
	@Inject
	private CartService cart_service;
	
	@RequestMapping(value="", method = RequestMethod.POST)
	public ResponseEntity<String> addCart(@RequestBody CartVO vo, HttpServletRequest request) throws Exception{
		ResponseEntity<String> entity = null;
		String session_id = request.getSession().getId();
		//세션 아이디 설정
		vo.setSession_id(session_id);
		//List<Integer> res_no = cart_service.getRestuarantNo(session_id);
		
		// 해당 세션이 cart에 데이타가 없을 경우
		if(cart_service.getRestuarantNo(session_id).isEmpty()) {
			// 들어온 vo를 add 해줌
			cart_service.addCartItem(vo);
			request.getSession().setAttribute("res_no", vo.getRes_no());
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		}else{//있을 경우
			// res_no 가 같은지 아닌지
			if(cart_service.getRestuarantNo(session_id).get(0) == vo.getRes_no()) {
				// vo 메뉴 체크후 넣어줌
				CartVO check = cart_service.checkMenu(vo);
				if(check == null) {
						cart_service.addCartItem(vo);
						entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
				}else {
					vo.setQuantity(check.getQuantity() + vo.getQuantity());
					cart_service.updateByQuan(vo);
					request.getSession().setAttribute("res_no", vo.getRes_no());
					entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
				}
			}else {
				// 기존에 있던 식당 장바구니 삭제
				cart_service.deleteById(session_id);
				cart_service.addCartItem(vo);
				request.getSession().setAttribute("res_no", vo.getRes_no());
				entity = new ResponseEntity<String>("CHANGE", HttpStatus.OK);
			}
		}
		
		/*
		CartVO check = cart_service.checkMenu(vo);
		if(check == null) {
			try {
				cart_service.addCartItem(vo);
				entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
			}catch(Exception e) {
				e.printStackTrace();
				entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
			}
		}else {
			vo.setQuantity(check.getQuantity() + vo.getQuantity());
			try {
				cart_service.updateByQuan(vo);
				entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
			}catch(Exception e) {
				e.printStackTrace();
				entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
			}
		}*/
		
		return entity;
	}
	
	@RequestMapping(value="/all", method = RequestMethod.GET)
	public ResponseEntity<List<CartVO>> list(HttpServletRequest request){
		String session_id = request.getSession().getId();
		ResponseEntity<List<CartVO>> entity = null;
		try {
			System.out.println(cart_service.list(session_id).toString());
			entity = new ResponseEntity<>(cart_service.list(session_id), HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	@RequestMapping(value="/{menu_no}", method = RequestMethod.DELETE)
	public ResponseEntity<String> remove(@RequestBody CartVO vo, HttpServletRequest request){
		ResponseEntity<String> entity = null;
		String session_id = request.getSession().getId();
		vo.setSession_id(session_id);
		try {
			cart_service.deleteByButton(vo);
			entity = new ResponseEntity<String>("REMOVE", HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value="/plus/{menu_no}", method = RequestMethod.PUT)
	public ResponseEntity<String> plusQuantity(@RequestBody CartVO vo, HttpServletRequest request){
		ResponseEntity<String> entity = null;
		String session_id = request.getSession().getId();
		vo.setSession_id(session_id);
		try {
			cart_service.updatePlus(vo);
			entity = new ResponseEntity<String>("REMOVE", HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	@RequestMapping(value="/minus/{menu_no}", method = RequestMethod.PUT)
	public ResponseEntity<String> minusQuantity(@RequestBody CartVO vo, HttpServletRequest request){
		ResponseEntity<String> entity = null;
		String session_id = request.getSession().getId();
		vo.setSession_id(session_id);
		try {
			cart_service.updateMinus(vo);
			entity = new ResponseEntity<String>("REMOVE", HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
}
