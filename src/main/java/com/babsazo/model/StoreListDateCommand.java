package com.babsazo.model;

import java.util.List;

public class StoreListDateCommand {
	
	// 매장번호 매장번호
    private int store_no;

    //  매장관리자
    private int emp_no;

    // 취급항목 취급항목명
    private String cate_nm;

    // 매장명 매장명
    private String store_nm;

    //  간단매장설명
    private String store_exp;

    // 매장위치 매장위치
    private String store_floor;

    // 매장전화번호 매장전화번호
    private String store_tel;

    //  영업일정보
    private String store_info;

    //  매장설명
    private String store_exp_dt;

    //  매장홈페이지
    private String store_url;

    //  매장이미지저장경로
    private String simg_root;

    //  매장별 평균메뉴가
    private int avg_price;

    //  매장별 선호도
    private int preference;

    //  사용중인테이블수
    private int cur_tbl_cnt;

    //  프로필이미지
    private String pimg_root;
    
    //  매장관리자
    private String emp_nm;
   
    //음식메뉴 리스트
   private List<MenuDataCommand> menuList;
	
    public StoreListDateCommand() {}
    
    public int getStore_no() {
		return store_no;
	}
	public void setStore_no(int store_no) {
		this.store_no = store_no;
	}
	public int getEmp_no() {
		return emp_no;
	}
	public void setEmp_no(int emp_no) {
		this.emp_no = emp_no;
	}
	public String getCate_nm() {
		return cate_nm;
	}
	public void setCate_nm(String cate_nm) {
		this.cate_nm = cate_nm;
	}
	public String getStore_nm() {
		return store_nm;
	}
	public void setStore_nm(String store_nm) {
		this.store_nm = store_nm;
	}
	public String getStore_exp() {
		return store_exp;
	}
	public void setStore_exp(String store_exp) {
		this.store_exp = store_exp;
	}
	public String getStore_floor() {
		return store_floor;
	}
	public void setStore_floor(String store_floor) {
		this.store_floor = store_floor;
	}
	public String getStore_tel() {
		return store_tel;
	}
	public void setStore_tel(String store_tel) {
		this.store_tel = store_tel;
	}
	public String getStore_info() {
		return store_info;
	}
	public void setStore_info(String store_info) {
		this.store_info = store_info;
	}
	public String getStore_exp_dt() {
		return store_exp_dt;
	}
	public void setStore_exp_dt(String store_exp_dt) {
		this.store_exp_dt = store_exp_dt;
	}
	
	public String getStore_url() {
		return store_url;
	}
	public void setStore_url(String store_url) {
		this.store_url = store_url;
	}
	public String getSimg_root() {
		return simg_root;
	}
	public void setSimg_root(String simg_root) {
		this.simg_root = simg_root;
	}
	public int getAvg_price() {
		return avg_price;
	}
	public void setAvg_price(int avg_price) {
		this.avg_price = avg_price;
	}
	public int getPreference() {
		return preference;
	}
	public void setPreference(int preference) {
		this.preference = preference;
	}
	public int getCur_tbl_cnt() {
		return cur_tbl_cnt;
	}
	public void setCur_tbl_cnt(int cur_tbl_cnt) {
		this.cur_tbl_cnt = cur_tbl_cnt;
	}
	public String getPimg_root() {
		return pimg_root;
	}
	public void setPimg_root(String pimg_root) {
		this.pimg_root = pimg_root;
	}
	public String getEmp_nm() {
		return emp_nm;
	}
	public void setEmp_nm(String emp_nm) {
		this.emp_nm = emp_nm;
	}
	public List<MenuDataCommand> getMenuList() {
		return menuList;
	}
	public void setMenuList(List<MenuDataCommand> menuList) {
		this.menuList = menuList;
	}
    
    
}
