package com.bendelivery.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bendelivery.domain.OwnerVO;
import com.bendelivery.domain.RestaurantVO;
import com.bendelivery.service.OwnerService;
import com.bendelivery.service.RestaurantService;

@Controller
@RequestMapping(value="/owner")
public class OwnerController {
	@Inject
	private OwnerService owner_service;
	@Inject
	private RestaurantService res_service;
	
	private static Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@RequestMapping(value="/join", method = RequestMethod.GET)
	public void registerGET() throws Exception{
		logger.info("register get------------------------------------");
	}
	
	@RequestMapping(value="/join", method = RequestMethod.POST)
	public String registerPOST(OwnerVO owner_vo, RestaurantVO res_vo) throws Exception{
		owner_service.join(owner_vo);
		System.out.println(owner_service.getNo(owner_vo));
		res_vo.setOwner_no(owner_service.getNo(owner_vo));
		res_service.register(res_vo);
		logger.info("register post------------------------------------");
		
		return "redirece:/owner/home";
	}
}
