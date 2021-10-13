package com.mall.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mall.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	private AdminService admimService;

	// 관리자 페이지 이동
	@RequestMapping(value = "main", method = RequestMethod.GET)
	public void adminMainGET() throws Exception {
		logger.info("관리자 페이지 이동");
	}

	// 상품 조회 페이지
	@GetMapping("/goodsDetail")
	public void goodGetInfoGET(int itemId, Criteria cri Model model) {
		
		logger.info("goodsGETInfo()....." + itemId);
		
		// 목록 페이지 조건 정보
		model.addAttribute("cri", cri);
		
		// 조회 페이지 정보
		model.addAttribute("goodsInfo", adminService.goodGetsDetail);
	}
}
