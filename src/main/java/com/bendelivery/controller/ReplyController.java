package com.bendelivery.controller;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.bendelivery.domain.ReplyVO;
import com.bendelivery.service.ReplyService;

@RestController
@RequestMapping(value="/reply")
public class ReplyController {
	@Inject
	private ReplyService reply_service;
	
	@RequestMapping(value="/add", method = RequestMethod.POST)
	public ResponseEntity<String> createReply(@RequestBody ReplyVO vo)throws Exception {
		ResponseEntity<String> entity = null;
		try {
			if(reply_service.read(vo.getReview_no()) != null) {
				reply_service.update(vo);
				entity = new ResponseEntity<String>("MODIFY", HttpStatus.OK);
			}
			else{
				reply_service.create(vo);
				entity = new ResponseEntity<String>("CREATE", HttpStatus.OK);
			}
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	@RequestMapping(value="/read", method = RequestMethod.POST)
	public ResponseEntity<ReplyVO> getReply(@RequestBody ReplyVO vo)throws Exception {
		ResponseEntity<ReplyVO> entity = null;
		try {
			
			entity = new ResponseEntity<ReplyVO>(reply_service.read(vo.getReview_no()), HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<ReplyVO>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
}
