package com.babsazo.model;

import java.sql.Timestamp;

public class SeatingDTO {
	// 좌석관리번호
	private Integer stNo;

	// 매장번호
	private Integer storeNo;

	// 예약일자
	private String bkDate;

	// 예약시간
	private String bkTime;

	// 전체테이블수
	private Integer totTblCnt;

	// 이용가능테이블수
	private Integer avlTblCnt;

	// 사용중인테이블수
	private Integer curTblCnt;

	// 갱신일자
	private Timestamp insertDate;

	public Integer getStNo() {
		return stNo;
	}

	public void setStNo(Integer stNo) {
		this.stNo = stNo;
	}

	public Integer getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(Integer storeNo) {
		this.storeNo = storeNo;
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

	public Integer getTotTblCnt() {
		return totTblCnt;
	}

	public void setTotTblCnt(Integer totTblCnt) {
		this.totTblCnt = totTblCnt;
	}

	public Integer getAvlTblCnt() {
		return avlTblCnt;
	}

	public void setAvlTblCnt(Integer avlTblCnt) {
		this.avlTblCnt = avlTblCnt;
	}

	public Integer getCurTblCnt() {
		return curTblCnt;
	}

	public void setCurTblCnt(Integer curTblCnt) {
		this.curTblCnt = curTblCnt;
	}

	public Timestamp getInsertDate() {
		return insertDate;
	}

	public void setInsertDate(Timestamp insertDate) {
		this.insertDate = insertDate;
	}

}
