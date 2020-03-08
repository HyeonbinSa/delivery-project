package com.bendelivery.controller;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bendelivery.domain.ResOperationVO;
import com.bendelivery.service.ResOperationService;
import com.bendelivery.service.RestaurantService;

@Controller
@RequestMapping(value="/restaurant")
public class RestaurantController {
	@Inject
	private RestaurantService res_service;
	@Inject
	private ResOperationService res_operation_service;
	
	@RequestMapping(value="/getOperation")
	public ResponseEntity<ResOperationVO> getOperation(@RequestBody ResOperationVO vo) {
		ResponseEntity<ResOperationVO> entity = null;
		int res_no = vo.getRes_no();
		try {
			entity = new ResponseEntity<ResOperationVO>(res_operation_service.getByRes(res_no), HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<ResOperationVO>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
}
