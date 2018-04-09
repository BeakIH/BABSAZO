package com.babsazo.model;

import java.sql.Timestamp;

public class ReviewDTO {
	// 매장 별 평가 및 이용후기관리 이용고객의 매장 평가 및 이용후기

	// 글번호 리뷰글번호
	private Integer rvNo;

	// 매장번호
	private Integer storeNo;

	// 회원명 고객번호
	private Integer memNo;

	// 예약번호
	private Integer bkNo;

	// 이용일자 방문일자
	private String bkDate;

	// 글제목 리뷰글제목
	private String rvTitle;

	// 리뷰내용
	private String rvContent;

	// 좋아요 좋아요
	private Integer likeCnt;

	// 조회수 조회수
	private Integer rViewCnt;

	// 글작성일자
	private Timestamp insertDate;

	public Integer getRvNo() {
		return rvNo;
	}

	public void setRvNo(Integer rvNo) {
		this.rvNo = rvNo;
	}

	public Integer getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(Integer storeNo) {
		this.storeNo = storeNo;
	}

	public Integer getMemNo() {
		return memNo;
	}

	public void setMemNo(Integer memNo) {
		this.memNo = memNo;
	}

	public Integer getBkNo() {
		return bkNo;
	}

	public void setBkNo(Integer bkNo) {
		this.bkNo = bkNo;
	}

	public String getBkDate() {
		return bkDate;
	}

	public void setBkDate(String bkDate) {
		this.bkDate = bkDate;
	}

	public String getRvTitle() {
		return rvTitle;
	}

	public void setRvTitle(String rvTitle) {
		this.rvTitle = rvTitle;
	}

	public String getRvContent() {
		return rvContent;
	}

	public void setRvContent(String rvContent) {
		this.rvContent = rvContent;
	}

	public Integer getLikeCnt() {
		return likeCnt;
	}

	public void setLikeCnt(Integer likeCnt) {
		this.likeCnt = likeCnt;
	}

	public Integer getRViewCnt() {
		return rViewCnt;
	}

	public void setRViewCnt(Integer rViewCnt) {
		this.rViewCnt = rViewCnt;
	}

	public Timestamp getInsertDate() {
		return insertDate;
	}

	public void setInsertDate(Timestamp insertDate) {
		this.insertDate = insertDate;
	}
}
