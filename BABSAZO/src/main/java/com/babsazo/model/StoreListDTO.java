package com.babsazo.model;

public class StoreListDTO {
	// 건물내 입점한 매장 리스트 건물내 입점 매장 리스트

	// 매장번호 매장번호
	private Integer storeNo;

	// 매장관리자
	private Integer empNo;

	// 취급항목 취급항목명
	private String cateNm;

	// 매장명 매장명
	private String storeNm;

	// 간단매장설명
	private String storeExp;

	// 매장위치 층별매장위치
	private String storeFloor;

	// 매장전화번호 매장전화번호
	private String storeTel;

	// 영업일정보
	private String storeInfo;

	// 매장설명
	private String storeExpDt;

	// 매장홈페이지
	private String storeUrl;

	// 매장이미지저장경로
	private String simgRoot;

	// 매장별 평균메뉴가
	private Integer avgPrice;

	// 매장별 선호도
	private Integer preference;

	// 사용중인테이블수
	private Integer curTblCnt;

	// 프로필이미지
	private String pimgRoot;

	// 매장관리자
	private String empNm;

	public Integer getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(Integer storeNo) {
		this.storeNo = storeNo;
	}

	public Integer getEmpNo() {
		return empNo;
	}

	public void setEmpNo(Integer empNo) {
		this.empNo = empNo;
	}

	public String getCateNm() {
		return cateNm;
	}

	public void setCateNm(String cateNm) {
		this.cateNm = cateNm;
	}

	public String getStoreNm() {
		return storeNm;
	}

	public void setStoreNm(String storeNm) {
		this.storeNm = storeNm;
	}

	public String getStoreExp() {
		return storeExp;
	}

	public void setStoreExp(String storeExp) {
		this.storeExp = storeExp;
	}

	public String getStoreFloor() {
		return storeFloor;
	}

	public void setStoreFloor(String storeFloor) {
		this.storeFloor = storeFloor;
	}

	public String getStoreTel() {
		return storeTel;
	}

	public void setStoreTel(String storeTel) {
		this.storeTel = storeTel;
	}

	public String getStoreInfo() {
		return storeInfo;
	}

	public void setStoreInfo(String storeInfo) {
		this.storeInfo = storeInfo;
	}

	public String getStoreExpDt() {
		return storeExpDt;
	}

	public void setStoreExpDt(String storeExpDt) {
		this.storeExpDt = storeExpDt;
	}

	public String getStoreUrl() {
		return storeUrl;
	}

	public void setStoreUrl(String storeUrl) {
		this.storeUrl = storeUrl;
	}

	public String getSimgRoot() {
		return simgRoot;
	}

	public void setSimgRoot(String simgRoot) {
		this.simgRoot = simgRoot;
	}

	public Integer getAvgPrice() {
		return avgPrice;
	}

	public void setAvgPrice(Integer avgPrice) {
		this.avgPrice = avgPrice;
	}

	public Integer getPreference() {
		return preference;
	}

	public void setPreference(Integer preference) {
		this.preference = preference;
	}

	public Integer getCurTblCnt() {
		return curTblCnt;
	}

	public void setCurTblCnt(Integer curTblCnt) {
		this.curTblCnt = curTblCnt;
	}

	public String getPimgRoot() {
		return pimgRoot;
	}

	public void setPimgRoot(String pimgRoot) {
		this.pimgRoot = pimgRoot;
	}

	public String getEmpNm() {
		return empNm;
	}

	public void setEmpNm(String empNm) {
		this.empNm = empNm;
	}

}
