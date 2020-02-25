package com.bendelivery.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.bendelivery.domain.LikeVO;
import com.bendelivery.domain.MemberVO;
import com.bendelivery.domain.RestaurantVO;
import com.bendelivery.service.LikeService;
import com.bendelivery.service.RestaurantService;

@RestController
@RequestMapping(value="/like")
public class LikeController {
	@Inject
	private LikeService like_service;
	@Inject 
	private RestaurantService res_service;
	// 찜하기 요청 
	@RequestMapping(value ="/add", method = RequestMethod.POST)
	public ResponseEntity<String> like(@RequestBody LikeVO vo) throws Exception{
		ResponseEntity<String> entity = null;
		// 이미 찜했는지 확인
		int check = like_service.check(vo);
		System.out.println("현재 체크 상태 : "+check);
		// 찜이 안되어있을때
		if(check != 1) {
			// 찜하기
			like_service.like(vo);
			entity = new ResponseEntity<String>("LIKE_COMPLETE", HttpStatus.OK);
		}else {
			entity = new ResponseEntity<String>("ALREADY", HttpStatus.OK);
		}
		
		
		return entity;
	}
	
	@RequestMapping(value ="/delete", method = RequestMethod.DELETE)
	public ResponseEntity<String> unlike(@RequestBody LikeVO vo) throws Exception{
		ResponseEntity<String> entity = null;
		int check = like_service.check(vo);
		System.out.println("현재 체크 상태 : "+check);
		if(check == 1) {
			like_service.unlike(vo);
			entity = new ResponseEntity<String>("UNLIKE", HttpStatus.OK);
		}else {
			entity = new ResponseEntity<String>("ALREADY", HttpStatus.OK);
		}
		return entity;
	}
	
	@RequestMapping(value ="/check", method = RequestMethod.POST)
	public ResponseEntity<String> check(@RequestBody LikeVO vo) throws Exception{
		ResponseEntity<String> entity = null;
		int check=like_service.check(vo);
		System.out.println("check 메소드에서 현재 체크 상태 : "+check + "+++" + vo.getRes_no()+","+vo.getMember_no()+","+check);
		if(check != 1) {
			entity = new ResponseEntity<String>("NOLIKE", HttpStatus.OK);
		}else {
			entity = new ResponseEntity<String>("LIKE", HttpStatus.OK);
		}
		return entity;
	}
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public ResponseEntity<List<RestaurantVO>> list(HttpServletRequest request)throws Exception{
		ResponseEntity<List<RestaurantVO>> entity = null;
		
		// 세션을 통해 member_no 가져옴
		MemberVO member = (MemberVO) request.getSession().getAttribute("login");
		int member_no = member.getMember_no();
		// 값을 잘 받아오는지 테스트 
		System.out.println("member_no= "+ member.getMember_no());
		List<Integer> list = like_service.listByMno(member_no);
		if(list == null) {
			entity = new ResponseEntity<List<RestaurantVO>>(HttpStatus.BAD_REQUEST);
		}else {
			List<RestaurantVO> res_list = new ArrayList<>();
			for(int res_no : list) {
				// res_no를 통해 식당 정보 가져옴
				RestaurantVO resVO = res_service.read(res_no);
				// 식당 리스트에 객체 넣어줌
				res_list.add(resVO);
				//System.out.println("res_no = "+ res_no);
			}
			entity = new ResponseEntity<List<RestaurantVO>>(res_list, HttpStatus.OK);
		}
		
		return entity;
	}
}
