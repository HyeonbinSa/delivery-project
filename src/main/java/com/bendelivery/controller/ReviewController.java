package com.bendelivery.controller;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

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
}
