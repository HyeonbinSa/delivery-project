package com.bendelivery.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.bendelivery.domain.OrderMenuVO;
import com.bendelivery.domain.OrderVO;
import com.bendelivery.service.CartService;
import com.bendelivery.service.OrderMenuService;
import com.bendelivery.service.OrderService;

@RestController
@RequestMapping("/order")
public class OrderController {
	@Inject
	private CartService cart_service;
	@Inject
	private OrderService order_service;
	
	@Inject
	private OrderMenuService order_menu_service;
	
	@RequestMapping(value="", method = RequestMethod.POST)
	public ResponseEntity<Integer> order(@RequestBody OrderVO vo, HttpServletRequest request)throws Exception{
		
		ResponseEntity<Integer> entity = null;
		order_service.createOrder(vo);
		System.out.println("오더 넘버는 " + vo.getOrder_no());
		try {
			entity = new ResponseEntity<Integer>(vo.getOrder_no(), HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Integer>(0, HttpStatus.BAD_REQUEST);
		}
		// 주문 완료 시에 해당 식당-세션에 담긴 장바구니 내용 삭제 
		cart_service.deleteById(request.getSession().getId());
		// 세션에 등록된 식당번호 삭제
		request.getSession().removeAttribute("res_no");
		return entity;
	}
	
	@RequestMapping(value="/{order_no}", method = RequestMethod.POST )
	public ResponseEntity<String> order(@RequestBody OrderMenuVO vo)throws Exception{
		ResponseEntity<String> entity = null;
		
		order_menu_service.createOrderMenu(vo);
		try {
			entity = new ResponseEntity<String>("GOOD", HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
}
