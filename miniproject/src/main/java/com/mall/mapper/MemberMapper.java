package com.mall.mapper;

import com.mall.model.MemberVO;

// MemberMapper.xml의 쿼리문을 실행시켜줄 메서드가 작성된 클래스
public interface MemberMapper {
	
	// 회원가입
	public void memberJoin(MemberVO member);
	
	// 아이디 중복 검사
	public int idCheck(String memberId);
	
	// 로그인
	public MemberVO memberLogin(MemberVO member);
	
	// 회원 정보 조회
	public MemberVO readMember(String memberId) throws Exception;

}
