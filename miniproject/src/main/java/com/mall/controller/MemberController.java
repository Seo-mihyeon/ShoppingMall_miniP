package com.mall.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mall.model.MemberVO;
import com.mall.service.MemberService;

import oracle.net.aso.l;

// 회원과 관련된 요청을 따로 관리하기 위한 컨트롤러 클래스
@Controller
@RequestMapping(value = "/member")
public class MemberController {

	// 로그 기록을 남기기 위해 변수를 선언해줌
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired // MemberService가 MemberController에 자동 주입되도록
	private MemberService memberService;

	@Autowired // 비밀번호 인코딩 암호화
	private BCryptPasswordEncoder pwEncoder;

	// 회원가입 페이지 이동
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public void loginGET() {
		logger.info("회원가입 페이지 진입");
	}

	// 회원가입 ((비밀번호 암호화 인코딩 적용)
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinPOST(MemberVO member) throws Exception {
		logger.info("join 진입");

		String rawPw = ""; // 인코딩 전 비밀번호
		String encodePw = ""; // 인코딩 후 비밀번호

		rawPw = member.getMemberPw(); // 비밀번호 데이터 얻음
		encodePw = pwEncoder.encode(rawPw); // 비밀번호 인코딩
		member.setMemberPw(encodePw); // 인코딩된 비밀번호 member객체에 다시 저장

		/* 회원가입 쿼리 실행 */
		memberService.memberJoin(member);

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
	public String memberIdChkPOST(String memberId) throws Exception {
		logger.info("memberIdChk() 진입");

		int result = memberService.idCheck(memberId);

		logger.info("결과값 = " + result);

		if (result != 0) {
			return "fail"; // 중복 아이디 존재
		} else {
			return "success"; // 중복값 없음
		}

	}

	// 로그인(비밀번호 암호화 인코딩 적용)
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String loginPOST(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) throws Exception {

//		System.out.println("login 메서드 진입");
//		System.out.println("전달된 데이터 : " + member);

		// 서버 세션 변수 선언
		HttpSession session = request.getSession();
		// 제출받은 비밀번호와 인코딩 된 비밀번호 잠시 저장하는 변수
		String rawPw = "";
		String encodPw = "";

		MemberVO lvo = memberService.memberLogin(member);

		// 제출한 아이디와 일치하는 아이디 있는지
		if (lvo != null) { // 일치하는 아이디 존재 시
			rawPw = member.getMemberPw(); // 사용자가 제출한 비밀번호
			encodPw = lvo.getMemberPw(); // DB에 저장된 인코딩된 비밀번호

			if (true == pwEncoder.matches(rawPw, encodPw)) { // 비밀번호 일치여부 판단
				lvo.setMemberPw(""); // 인코딩된 비밀번호 정보 지움
				session.setAttribute("member", lvo); // 세션에 사용자 정보 저장
				return "redirect:/main"; // 메인페이지 이동
			} else {
				rttr.addFlashAttribute("result", 0);
				return "redirect:/member/login"; // 로그인 페이지 이동
			}

		} else { // 일치하는 아이디 존재하지 않을 시
			rttr.addFlashAttribute("result", 0);
			return "redirect:/member/login"; // 로그인 페이지 이동
		}

		/*
		 * 로그인 객체 변수 (비번 암호화 인코딩 이전 기존 코드) MemberVO lvo =
		 * memberService.memberLogin(member);
		 * 
		 * if (lvo == null) { // 일치하지 않는 계정 입력 경우 int result = 0;
		 * rttr.addFlashAttribute("result", result); return "redirect:/member/login"; }
		 * else { session.setAttribute("member", lvo); // 일치하는 계정 입력 경우에는 session에 객체 정보
		 * 저장 }
		 * 
		 * return "redirect:/main";
		 */
	}

	// 메인페이지 로그아웃
	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public String logoutMainGET(HttpServletRequest request) throws Exception {
		logger.info("logoutMainGET메서드 진입");
		
		HttpSession session = request.getSession(); // 로그인하고 있는 세션 정보 가져와서 session에 저장
		
		session.invalidate(); // 가져온 세션 전체를 무효화함
		
		return "redirect:/main";

	}
	
	// 비동기 방식 로그아웃 메서드 
	@RequestMapping(value = "logout.do", method = RequestMethod.POST)
	@ResponseBody
	public void logoutPOST(HttpServletRequest request) throws Exception{
		logger.info("비동기 로그아웃 메서드 진입");
		
		HttpSession session = request.getSession();
		
		session.invalidate();
	}
	
	// 내 정보 보기
	@RequestMapping(value = "/mypage")
	public String mypage() throws Exception{
		return "/member/mypage";
		
	}

}
