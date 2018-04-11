package com.babsazo.model;

//예약 및 대기 상태에서 미리주문이 가능하기 위한 매장별 메뉴정보 예약 및 대기신청시 미리주문이 가능한 매장별 메뉴리스트
public class PreorderDTO {

	// 메뉴번호
	private Integer menuNo;

	// 매장번호 매장번호
	private Integer storeNo;

	// 취급코드번호 취급항목명
	private String cateNm;

	// 메뉴명1 메뉴명
	private String menuNm;

	// 메뉴명3 가격
	private Integer menuPrice;

	// 메뉴이미지
	private String menuImgRoot;

	public Integer getMenuNo() {
		return menuNo;
	}

	public void setMenuNo(Integer menuNo) {
		this.menuNo = menuNo;
	}

	public Integer getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(Integer storeNo) {
		this.storeNo = storeNo;
	}

	public String getCateNm() {
		return cateNm;
	}

	public void setCateNm(String cateNm) {
		this.cateNm = cateNm;
	}

	public String getMenuNm() {
		return menuNm;
	}

	public void setMenuNm(String menuNm) {
		this.menuNm = menuNm;
	}

	public Integer getMenuPrice() {
		return menuPrice;
	}

	public void setMenuPrice(Integer menuPrice) {
		this.menuPrice = menuPrice;
	}

	public String getMenuImgRoot() {
		return menuImgRoot;
	}

	public void setMenuImgRoot(String menuImgRoot) {
		this.menuImgRoot = menuImgRoot;
	}

}