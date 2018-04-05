package com.babsazo.model;

// 검색에 사용되는 모든 파라미터를 가진 DTO

public class SearchDto {

	// 검색창 
	private String search;	// 검색어
	private int searchn;	// 카테고리
	
	private int sortValue;	// 기본정렬옵션
	
	private int minSal;		// 최소값
	private int maxSal;		// 최대값
	
	private int cate_nm;	// 음식종류
	private int floor_no;	// 층 선택
	
	public SearchDto() {

	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public int getSearchn() {
		return searchn;
	}

	public void setSearchn(int searchn) {
		this.searchn = searchn;
	}

	public int getSortValue() {
		return sortValue;
	}

	public void setSortValue(int sortValue) {
		this.sortValue = sortValue;
	}

	public int getMinSal() {
		return minSal;
	}

	public void setMinSal(int minSal) {
		this.minSal = minSal;
	}

	public int getMaxSal() {
		return maxSal;
	}

	public void setMaxSal(int maxSal) {
		this.maxSal = maxSal;
	}

	public int getCate_nm() {
		return cate_nm;
	}

	public void setCate_nm(int cate_nm) {
		this.cate_nm = cate_nm;
	}

	public int getFloor_no() {
		return floor_no;
	}

	public void setFloor_no(int floor_no) {
		this.floor_no = floor_no;
	}

	@Override
	public String toString() {
		return "SearchDto [search=" + search + ", searchn=" + searchn + ", sortValue=" + sortValue + ", minSal="
				+ minSal + ", maxSal=" + maxSal + ", cate_nm=" + cate_nm + ", floor_no=" + floor_no + "]";
	}
}
