package com.mall.model;

public class MemberVO {

	// 회원 아이디
	private String memberId;

	// 회원 비밀번호
	private String memberPw;

	// 회원 이름
	private String memberName;

	// 회원 이메일
	private String memberMail;

	// 회원 생년월일
	private String memberBirth;

	// 회원 기본주소
	private String memberBasicAddr;

	// 회원 상세주소
	private String memberDetailAddr;

	// 관리자 구분(0:일반사용자, 1:관리자)
	private int adminCk;

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPw() {
		return memberPw;
	}

	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberMail() {
		return memberMail;
	}

	public void setMemberMail(String memberMail) {
		this.memberMail = memberMail;
	}

	public String getMemberBirth() {
		return memberBirth;
	}

	public void setMemberBirth(String memberBirth) {
		this.memberBirth = memberBirth;
	}

	public String getMemberBasicAddr() {
		return memberBasicAddr;
	}

	public void setMemberBasicAddr(String memberBasicAddr) {
		this.memberBasicAddr = memberBasicAddr;
	}

	public String getMemberDetailAddr() {
		return memberDetailAddr;
	}

	public void setMemberDetailAddr(String memberDetailAddr) {
		this.memberDetailAddr = memberDetailAddr;
	}

	public int getAdminCk() {
		return adminCk;
	}

	public void setAdminCk(int adminCk) {
		this.adminCk = adminCk;
	}

	@Override
	public String toString() {
		return "MemberVO [memberId=" + memberId + ", memberPw=" + memberPw + ", memberName=" 
						+ memberName + ", memberMail=" + memberMail + ", memberBirth=" + memberBirth 
						+ ", memberBasicAddr=" + memberBasicAddr + ", memberDetailAddr=" + memberDetailAddr
						+ ", adminCk=" + adminCk;
	}

	
}
