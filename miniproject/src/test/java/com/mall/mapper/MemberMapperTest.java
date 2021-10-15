package com.mall.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.mall.model.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTest {
	
	@Autowired // MemberMapper.java 인터페이스 의존성 주입
	private MemberMapper memberMapper;
	
	// 회원가입 쿼리 테스트 메서드
//	@Test
//	public void memberJoin() throws Exception{
//		MemberVO member = new MemberVO();
//		
//		member.setMemberId("test"); // 회원 id
//		member.setMemberPw("test"); // 회원 pw
//		member.setMemberName("test"); // 회원 이름
//		member.setMemberMail("test"); // 회원 메일
//		member.setMemberBirth("test"); // 회원 생년월일
//		member.setMemberBasicAddr("test"); // 회원 기본 주소
//		member.setMemberDetailAddr("test"); // 회원 상세 주소
//		
//		memberMapper.memberJoin(member);
//	}
	
	// 아이디 중복 검사 테스트 메서드
	@Test
	public void memberIdChk() throws Exception{
		String id = "test";
		String id2 = "abc";
		memberMapper.idCheck(id);
		memberMapper.idCheck(id2);
	}
	
	

}
