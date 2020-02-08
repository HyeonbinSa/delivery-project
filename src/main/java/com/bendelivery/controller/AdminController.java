package com.bendelivery.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.bendelivery.domain.RestaurantVO;
import com.bendelivery.service.OwnerService;
import com.bendelivery.service.RestaurantService;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	@Inject
	private RestaurantService service;
	
	@Inject OwnerService owner_service;
	
	private static Logger logger = LoggerFactory.getLogger(AdminController.class);

	@RequestMapping(value="/register", method = RequestMethod.GET)
	public void registerGET() {
		logger.info("register get------------------------------------");
	}
	
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public String registerPOST(RestaurantVO vo, RedirectAttributes rttr)throws Exception {
		System.out.println(vo.toString());
		service.register(vo);
		logger.info("register post------------------------------------");

		rttr.addFlashAttribute("result", "success");
		return "redirect:/admin/list";
	}
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public void listGET(Model model)throws Exception {
		model.addAttribute("list", service.getList());
		logger.info("list get------------------------------------");
	}
	@RequestMapping(value="/read", method = RequestMethod.GET)
	public void readGET(@RequestParam("res_no") int res_no, Model model)throws Exception{
		logger.info("read - "+res_no+"get------------------------------------");
		model.addAttribute("resVO", service.read(res_no));
		int owner_no = service.read(res_no).getOwner_no();
		model.addAttribute("ownerVO", owner_service.read(owner_no));
	}
}
