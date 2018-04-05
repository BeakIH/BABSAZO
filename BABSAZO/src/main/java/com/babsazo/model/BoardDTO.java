package com.babsazo.model;

public class BoardDTO {
	// 매장 별 휴무일 등 이벤트 및 공지사항 매장 별 휴무일, 이벤트 및 공지사항

	// 글번호 공지글번호
	private Integer bNo;

	// 매장번호
	private Integer storeNo;

	// 게시자 게시직원번호
	private Integer empNo;

	// 글제목 공지글제목
	private String bTitle;

	// 게시직원명
	private String empNm;

	// 글내용 글내용
	private String bContent;

	// 게시일자 게시일자
	private String postDate;

	// 조회수 조회수
	private Integer bViewCnt;

	// 게시여부
	private String postYn;

	public Integer getBNo() {
		return bNo;
	}

	public void setBNo(Integer bNo) {
		this.bNo = bNo;
	}

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

	public String getBTitle() {
		return bTitle;
	}

	public void setBTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public String getEmpNm() {
		return empNm;
	}

	public void setEmpNm(String empNm) {
		this.empNm = empNm;
	}

	public String getBContent() {
		return bContent;
	}

	public void setBContent(String bContent) {
		this.bContent = bContent;
	}

	public String getPostDate() {
		return postDate;
	}

	public void setPostDate(String postDate) {
		this.postDate = postDate;
	}

	public Integer getBViewCnt() {
		return bViewCnt;
	}

	public void setBViewCnt(Integer bViewCnt) {
		this.bViewCnt = bViewCnt;
	}

	public String getPostYn() {
		return postYn;
	}

	public void setPostYn(String postYn) {
		this.postYn = postYn;
	}
}
