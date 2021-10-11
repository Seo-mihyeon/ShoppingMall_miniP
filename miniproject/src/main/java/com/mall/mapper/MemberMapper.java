package com.mall.mapper;

import com.mall.model.MemberVO;

// MemberMapper.xml의 쿼리문을 실행시켜줄 메서드가 작성된 클래스
public interface MemberMapper {
	
	// 회원가입
	public void memberJoin(MemberVO member);

}
