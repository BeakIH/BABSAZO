package com.babsazo.model;

import java.sql.Timestamp;

public class MemberDTO {
	// 예약서비스를 이용하기 위하여 회원가입 고객관리

	// 회원번호 고객번호
	private Integer memNo;

	// 회원명 고객명
	private String memNm;

	// ID ID
	private String memId;

	// PASSWORD PASSWORD
	private String memPw;

	// 휴대폰번호 휴대폰번호
	private String memTel;

	// 자택주소
	private String address;

	// EMAIL주소
	private String email;

	// EMAIL수신여부
	private String emailYn;

	// 관심매장
	private String fvrtStr1;

	// 관심메뉴
	private String fvrtStr2;

	// 가입일자
	private Timestamp joinDate;

	public Integer getMemNo() {
		return memNo;
	}

	public void setMemNo(Integer memNo) {
		this.memNo = memNo;
	}

	public String getMemNm() {
		return memNm;
	}

	public void setMemNm(String memNm) {
		this.memNm = memNm;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPw() {
		return memPw;
	}

	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}

	public String getMemTel() {
		return memTel;
	}

	public void setMemTel(String memTel) {
		this.memTel = memTel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmailYn() {
		return emailYn;
	}

	public void setEmailYn(String emailYn) {
		this.emailYn = emailYn;
	}

	public String getFvrtStr1() {
		return fvrtStr1;
	}

	public void setFvrtStr1(String fvrtStr1) {
		this.fvrtStr1 = fvrtStr1;
	}

	public String getFvrtStr2() {
		return fvrtStr2;
	}

	public void setFvrtStr2(String fvrtStr2) {
		this.fvrtStr2 = fvrtStr2;
	}

	public Timestamp getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Timestamp joinDate) {
		this.joinDate = joinDate;
	}

}
