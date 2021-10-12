package com.mall.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mall.mapper.MemberMapper;
import com.mall.model.MemberVO;

@Service // 서비스를 처리할 클래스
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberMapper memberMapper;

	@Override
	public void memberJoin(MemberVO member) throws Exception {
		memberMapper.memberJoin(member);
		
	}

	@Override
	public int idCheck(String memberId) throws Exception {
		return memberMapper.idCheck(memberId);
		
	}
	
	

}
