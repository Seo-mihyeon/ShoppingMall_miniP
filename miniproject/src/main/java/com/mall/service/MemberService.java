package com.mall.service;

import com.mall.model.MemberVO;

public interface MemberService {
	
	// 회원가입
	public void memberJoin(MemberVO member) throws Exception;
	
	// 아이디 중복 체크
	public int idCheck(String memberId) throws Exception;

	// 로그인
	public MemberVO memberLogin(MemberVO member) throws Exception;
	
	// 회원정보 조회
	public MemberVO readMember(String memberId) throws Exception;
	
	// 회원 탈퇴
	public void deleteMember(MemberVO member) throws Exception;
	
	// 패스워드 체크
	public int passChk(MemberVO member) throws Exception;
	
}
