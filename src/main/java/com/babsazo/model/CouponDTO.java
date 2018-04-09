package com.babsazo.model;

import java.sql.Timestamp;

public class CouponDTO {

	// 쿠폰번호
	private Integer cpNo;

	// 쿠폰발급매장
	private Integer storeNo;

	// 고객번호
	private Integer memNo;

	// 쿠폰명
	private String cpNm;

	// 할인율
	private Integer discount;

	// 발행일자
	private Timestamp insertDate;

	// 쿠폰사용여부
	private String cpYn;

	// 쿠폰숨김여부
	private String hiddenYn;

	public Integer getCpNo() {
		return cpNo;
	}

	public void setCpNo(Integer cpNo) {
		this.cpNo = cpNo;
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

	public String getCpNm() {
		return cpNm;
	}

	public void setCpNm(String cpNm) {
		this.cpNm = cpNm;
	}

	public Integer getDiscount() {
		return discount;
	}

	public void setDiscount(Integer discount) {
		this.discount = discount;
	}

	public Timestamp getInsertDate() {
		return insertDate;
	}

	public void setInsertDate(Timestamp insertDate) {
		this.insertDate = insertDate;
	}

	public String getCpYn() {
		return cpYn;
	}

	public void setCpYn(String cpYn) {
		this.cpYn = cpYn;
	}

	public String getHiddenYn() {
		return hiddenYn;
	}

	public void setHiddenYn(String hiddenYn) {
		this.hiddenYn = hiddenYn;
	}

}
