package com.bendelivery.controller;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.bendelivery.domain.LikeVO;
import com.bendelivery.service.LikeService;

@RestController
@RequestMapping(value="/like")
public class LikeController {
	@Inject
	private LikeService like_service;
	
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
}
