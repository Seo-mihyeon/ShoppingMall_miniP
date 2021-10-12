package com.mall.service;

import com.mall.model.MemberVO;

public interface MemberService {
	
	// 회원가입
	public void memberJoin(MemberVO member) throws Exception;
	
	// 아이디 중복 쳋크
	public int idCheck(String memberId) throws Exception;

}
