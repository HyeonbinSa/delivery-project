package com.bendelivery.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.bendelivery.domain.MemberVO;
import com.bendelivery.domain.ReviewVO;
import com.bendelivery.service.ReviewService;


@RestController
@RequestMapping("/review")
public class ReviewController {
	@Inject
	private ReviewService review_service;
	
	@RequestMapping(value="/add", method = RequestMethod.POST)
	public ResponseEntity<String> addReview(@RequestBody ReviewVO vo)throws Exception{
		System.out.println(vo.toString());
		ResponseEntity<String> entity = null;
		try{
			review_service.create(vo);
			entity = new ResponseEntity<String>("ADDREVIEW", HttpStatus.OK);
		}catch(Exception e) {
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public ResponseEntity<List<ReviewVO>> listByMember(HttpServletRequest request)throws Exception{
		ResponseEntity<List<ReviewVO>> entity = null;
		MemberVO vo = (MemberVO) request.getSession().getAttribute("login");
		try {
			List<ReviewVO> list = review_service.listByMember(vo.getMember_no()); 
			entity = new ResponseEntity<List<ReviewVO>>(list, HttpStatus.OK);
		}catch(Exception e) {
			entity = new ResponseEntity<List<ReviewVO>>(HttpStatus.BAD_REQUEST);
		}
		
		
		return entity;
	}
	@RequestMapping(value="/list/{res_no}", method = RequestMethod.GET)
	public ResponseEntity<List<ReviewVO>> listByRes(@PathVariable int res_no)throws Exception{
		ResponseEntity<List<ReviewVO>> entity = null;
		try {
			List<ReviewVO> list = review_service.listByRes(res_no); 
			entity = new ResponseEntity<List<ReviewVO>>(list, HttpStatus.OK);
		}catch(Exception e) {
			entity = new ResponseEntity<List<ReviewVO>>(HttpStatus.BAD_REQUEST);
		}
		
		
		return entity;
	}
}
