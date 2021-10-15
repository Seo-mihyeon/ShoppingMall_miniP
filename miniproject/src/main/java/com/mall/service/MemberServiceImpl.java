package com.mall.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mall.mapper.MemberMapper;
import com.mall.model.MemberVO;

@Service // 서비스를 처리할 클래스
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper memberMapper;

	// 회원 가입
	@Override
	public void memberJoin(MemberVO member) throws Exception {
		memberMapper.memberJoin(member);

	}

	// 아이디 중복 검사
	@Override
	public int idCheck(String memberId) throws Exception {
		return memberMapper.idCheck(memberId);

	}

	// 로그인
	@Override
	public MemberVO memberLogin(MemberVO member) throws Exception {
		return memberMapper.memberLogin(member);
	}

	// 회원정보 조회
	@Override
	public MemberVO readMember(String memberId) throws Exception {
		MemberVO member = null;
		try {
			member = memberMapper.readMember(memberId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return member;
	}

}
