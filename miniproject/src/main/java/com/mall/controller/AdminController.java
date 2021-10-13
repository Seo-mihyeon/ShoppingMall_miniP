package com.mall.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mall.model.ItemVO;
import com.mall.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	// 관리자 페이지 이동
	@RequestMapping(value = "main", method = RequestMethod.GET)
	public void adminMainGET() throws Exception {
		logger.info("관리자 페이지 이동");
	}

	@Autowired
	private AdminService adminService;

	// 상품 등록 페이지 접속
	@RequestMapping(value = "goodsManage", method = RequestMethod.GET)
	public void goodsManagerGET() throws Exception{
		logger.info("상품 등록 페이지 접속");
	}
	
	/* 상품 등록 페이지 */
	@PostMapping("/goodsEnroll")
	public String goodsManagerPOST(ItemVO item, RedirectAttributes rttr) {

		logger.info("goodsEnrollPOST......." + item);

		adminService.itemEnroll(item);

		rttr.addFlashAttribute("enroll_result", item.getItemName());

		return "redirect:/admin/goodsManage";
	}

	//
}
