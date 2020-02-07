package com.bendelivery.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		
		return "redirect:/owner/home";
	}
	@RequestMapping(value="/home", method = RequestMethod.GET)
	public void homeGet() {
		logger.info("Owner home get------------------------------------");
	}
	@RequestMapping(value="/registration", method = RequestMethod.GET)
	public void registrationGET() {
		logger.info("registration home get------------------------------------");
	}
	@RequestMapping(value="/registration", method = RequestMethod.POST)
	public String registrationPOST(OwnerVO vo, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("registration home get------------------------------------");
		// 사업자 등록번호와 핸드폰 번호가 등록되어있는지 확인 
		int owner_cnt = owner_service.check_owner(vo);
		// 해당 등록번호와 핸드폰 번호에 id와 pw가 있는지 확인 
		int id_cnt = owner_service.check_id(vo);
		if(owner_cnt == 0) {
			System.out.print("입점 신청 안함");
			rttr.addFlashAttribute("result", "fail");
			return "redirect:/owner/join";
		}else if(owner_cnt == 1 && id_cnt == 1){
			System.out.print("ID 있음");
			rttr.addFlashAttribute("result", "already");
			return "redirect:/owner/login";
		}else {
			System.out.print("입점 신청만 함");	
			//System.out.println("---------------"+owner_service.read(vo.getOwner_number()).toString()+"----------");
			rttr.addFlashAttribute("result", "create");
			return "redirect:/owner/signup/"+owner_service.getNo(vo);
		}
	}
	@RequestMapping(value="/signup/{owner_no}", method = RequestMethod.GET)
	public String signupGET(@PathVariable("owner_no") int owner_no, Model model) throws Exception{
		model.addAttribute("vo",owner_service.read(owner_no));
		return "owner/signup";
	}
	@RequestMapping(value="/signup/{owner_no}", method = RequestMethod.POST)
	public String signupPOST(OwnerVO vo, RedirectAttributes rttr)throws Exception{
		logger.info("signup Post ----------------------------------------");
		owner_service.registerOwner(vo);
		rttr.addFlashAttribute("result", "complete");
		return "redirect:/owner/login";
	}
}
