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
	
	private String[] search_1;
	private String[] search_2;
	private String[] search_3;
	
	public SearchDto() {

	}
	
	public String[] getSearch_1() {
		return search_1;
	}

	public void setSearch_1(String[] search_1) {
		this.search_1 = search_1;
	}

	public String[] getSearch_2() {
		return search_2;
	}

	public void setSearch_2(String[] search_2) {
		this.search_2 = search_2;
	}

	public String[] getSearch_3() {
		return search_3;
	}

	public void setSearch_3(String[] search_3) {
		this.search_3 = search_3;
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
