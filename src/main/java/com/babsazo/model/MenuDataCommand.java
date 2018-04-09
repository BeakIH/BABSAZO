package com.babsazo.model;

public class MenuDataCommand {
	
	//메뉴번호
	private int menu_no;
	
	//매장번호
	private int store_no;
	
	//취급항목명(ex:일식,중식,양식)
	private String cate_nm;
	
	//음식메뉴명
	private String menu_nm;
	
	//음식 가격
	private int menu_price;
	
	//음식 메뉴이미지 경로
	private String menu_img_root;
	
	
	public int getMenu_no() {
		return menu_no;
	}
	public void setMenu_no(int menu_no) {
		this.menu_no = menu_no;
	}
	public int getStore_no() {
		return store_no;
	}
	public void setStore_no(int store_no) {
		this.store_no = store_no;
	}
	public String getCate_nm() {
		return cate_nm;
	}
	public void setCate_nm(String cate_nm) {
		this.cate_nm = cate_nm;
	}
	public String getMenu_nm() {
		return menu_nm;
	}
	public void setMenu_nm(String menu_nm) {
		this.menu_nm = menu_nm;
	}
	public int getMenu_price() {
		return menu_price;
	}
	public void setMenu_price(int menu_price) {
		this.menu_price = menu_price;
	}
	public String getMenu_img_root() {
		return menu_img_root;
	}
	public void setMenu_img_root(String menu_img_root) {
		this.menu_img_root = menu_img_root;
	}
	
	
}
