package com.mall.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// 회원과 관련된 요청을 따로 관리하기 위한 컨트롤러 클래스
@Controller
@RequestMapping(value = "/member")
public class MemberController {
	
	// 로그 기록을 남기기 위해 변수를 선언해줌
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	// 회원가입 페이지 이동
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public void loginGET() {
		logger.info("회원가입 페이지 진입");
	}
	
	// 로그인 페이지 이동
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public void joinGET() {
		logger.info("로그인 페이지 진입");
	}
	
	

}
