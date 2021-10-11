package com.mall.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller // 이 클래스가 컨틀로러 역할을 한다고 스프링에 선언해줌
public class MallController {
	
	// 로그 기록을 남기기 위해 변수를 선언해줌
	private static final Logger logger = LoggerFactory.getLogger(MallController.class);

	// 메인 페이지 이동
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void mainPageGET() {
		logger.info("메인 페이지 진입");
	}
}
