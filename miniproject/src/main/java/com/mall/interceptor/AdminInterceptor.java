package com.mall.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.mall.model.MemberVO;

public class AdminInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		
		MemberVO lvo = (MemberVO)session.getAttribute("member");
		
		// lvo가 null이거나 getAdminCk() 메서드 반환값이 0이면 main페이지로 리다이렉트함
		if(lvo == null || lvo.getAdminCk() == 0) { // 관리자 계정이 아닌 경우
			response.sendRedirect("/main"); // 메인페이지로 리다이렉트
			
			return false;
		}
		
		// 아닐 경우 AdminController로 접근하도록 그래서 관리자 페이지로 가게끔
		return true; // 관리자 계정 로그인 경우(lvo != null && lvo.getAdminCk() ==1)
	}

}
