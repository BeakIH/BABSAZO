package com.babsazo.model;

import java.sql.Timestamp;

public class BookingDTO {
	// 예약자리스트 예약현황

	// 예약번호 예약번호
	private Integer bkNo;

	// 예약확인담당자
	private Integer empNo;

	// 예약회원번호 예약자회원번호
	private Integer memNo;

	// 매장번호
	private Integer storeNo;

	// 회원명 예약자명
	private String memNm;

	// 예약자연락처
	private String memTel;

	// 예약일시 예약일시
	private String bkDate;

	// 예약시간
	private String bkTime;

	// 예약인원 예약인원
	private String bkCnt;

	// 예약메뉴
	private String bkMenu;

	// 매장확인여부 매장확인여부
	private String cofirmYn;

	// 예약테이블수
	private Integer bkTblCnt;

	// 예상총가격
	private String bkPriSum;

	// 예약등록일자
	private Timestamp insertDate;

	public Integer getBkNo() {
		return bkNo;
	}

	public void setBkNo(Integer bkNo) {
		this.bkNo = bkNo;
	}

	public Integer getEmpNo() {
		return empNo;
	}

	public void setEmpNo(Integer empNo) {
		this.empNo = empNo;
	}

	public Integer getMemNo() {
		return memNo;
	}

	public void setMemNo(Integer memNo) {
		this.memNo = memNo;
	}

	public Integer getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(Integer storeNo) {
		this.storeNo = storeNo;
	}

	public String getMemNm() {
		return memNm;
	}

	public void setMemNm(String memNm) {
		this.memNm = memNm;
	}

	public String getMemTel() {
		return memTel;
	}

	public void setMemTel(String memTel) {
		this.memTel = memTel;
	}

	public String getBkDate() {
		return bkDate;
	}

	public void setBkDate(String bkDate) {
		this.bkDate = bkDate;
	}

	public String getBkTime() {
		return bkTime;
	}

	public void setBkTime(String bkTime) {
		this.bkTime = bkTime;
	}

	public String getBkCnt() {
		return bkCnt;
	}

	public void setBkCnt(String bkCnt) {
		this.bkCnt = bkCnt;
	}

	public String getBkMenu() {
		return bkMenu;
	}

	public void setBkMenu(String bkMenu) {
		this.bkMenu = bkMenu;
	}

	public String getCofirmYn() {
		return cofirmYn;
	}

	public void setCofirmYn(String cofirmYn) {
		this.cofirmYn = cofirmYn;
	}

	public Integer getBkTblCnt() {
		return bkTblCnt;
	}

	public void setBkTblCnt(Integer bkTblCnt) {
		this.bkTblCnt = bkTblCnt;
	}

	public String getBkPriSum() {
		return bkPriSum;
	}

	public void setBkPriSum(String bkPriSum) {
		this.bkPriSum = bkPriSum;
	}

	public Timestamp getInsertDate() {
		return insertDate;
	}

	public void setInsertDate(Timestamp insertDate) {
		this.insertDate = insertDate;
	}

}
