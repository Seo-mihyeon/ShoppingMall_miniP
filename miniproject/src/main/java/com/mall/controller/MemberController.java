package com.mall.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mall.model.MemberVO;
import com.mall.service.MemberService;

// 회원과 관련된 요청을 따로 관리하기 위한 컨트롤러 클래스
@Controller
@RequestMapping(value = "/member")
public class MemberController {
	
	// 로그 기록을 남기기 위해 변수를 선언해줌
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired // MemberService가 MemberController에 자동 주입되도록
	private MemberService memberService;

	// 회원가입 페이지 이동
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public void loginGET() {
		logger.info("회원가입 페이지 진입");
	}
	
	// 회원가입
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinPOST(MemberVO member) throws Exception{
		logger.info("join 진입");
		
		// 회원가입 서비스 실행
		memberService.memberJoin(member);
		
		logger.info("join service 성공");
		
		return "redirect:/main";
	}
	
	// 로그인 페이지 이동
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void joinGET() {
		logger.info("로그인 페이지 진입");
	}
	
	// 아이디 중복 검사
	@RequestMapping(value = "/memberIdChk", method = RequestMethod.POST)
	@ResponseBody
	public String memberIdChkPOST(String memberId) throws Exception{
		logger.info("memberIdChk() 진입");
		
		int result = memberService.idCheck(memberId);
		
		logger.info("결과값 = " + result );
		
		if(result != 0){
			return "fail"; // 중복 아이디 존재
		} else {
			return "success"; // 중복값 없음
		}
		
	}
	
	
	

}
