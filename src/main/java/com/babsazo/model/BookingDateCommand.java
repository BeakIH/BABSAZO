package com.babsazo.model;

import java.sql.Timestamp;

public class BookingDateCommand {
		
	 // 예약번호
    private int bk_no;

    //  예약확인담당자
    private int emp_no;

    // 예약회원번호 
    private int mem_no;
    
    //매장번호
    private int store_no;
    
    // 예약자명
    private String mem_nm;  

    //  예약자연락처
    private String mem_tel;

    // 예약일시
    private String bk_date;
    
    // 예약시간
    private String bk_time;
    
    // 예약인원수
    private String bk_cnt;
    
    // 예약음식메뉴
    private String bk_menu;
    
    // 매장확인여부
    private String cofirm_yn;
    
    // 예약테이블수
    private int bk_tbl_cnt;
    
    // 예상총가격
    private String bk_pri_sum;
    
    // 예약등록일자
    private Timestamp insert_date;

	public int getBk_no() {
		return bk_no;
	}

	public void setBk_no(int bk_no) {
		this.bk_no = bk_no;
	}

	public int getEmp_no() {
		return emp_no;
	}

	public void setEmp_no(int emp_no) {
		this.emp_no = emp_no;
	}

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public int getStore_no() {
		return store_no;
	}

	public void setStore_no(int store_no) {
		this.store_no = store_no;
	}

	public String getMem_nm() {
		return mem_nm;
	}

	public void setMem_nm(String mem_nm) {
		this.mem_nm = mem_nm;
	}

	public String getMem_tel() {
		return mem_tel;
	}

	public void setMem_tel(String mem_tel) {
		this.mem_tel = mem_tel;
	}

	public String getBk_date() {
		return bk_date;
	}

	public void setBk_date(String bk_date) {
		this.bk_date = bk_date;
	}

	public String getBk_time() {
		return bk_time;
	}

	public void setBk_time(String bk_time) {
		this.bk_time = bk_time;
	}

	public String getBk_cnt() {
		return bk_cnt;
	}

	public void setBk_cnt(String bk_cnt) {
		this.bk_cnt = bk_cnt;
	}

	public String getBk_menu() {
		return bk_menu;
	}

	public void setBk_menu(String bk_menu) {
		this.bk_menu = bk_menu;
	}

	public String getCofirm_yn() {
		return cofirm_yn;
	}

	public void setCofirm_yn(String cofirm_yn) {
		this.cofirm_yn = cofirm_yn;
	}

	public int getBk_tbl_cnt() {
		return bk_tbl_cnt;
	}

	public void setBk_tbl_cnt(int bk_tbl_cnt) {
		this.bk_tbl_cnt = bk_tbl_cnt;
	}

	public String getBk_pri_sum() {
		return bk_pri_sum;
	}

	public void setBk_pri_sum(String bk_pri_sum) {
		this.bk_pri_sum = bk_pri_sum;
	}

	public Timestamp getInsert_date() {
		return insert_date;
	}

	public void setInsert_date(Timestamp insert_date) {
		this.insert_date = insert_date;
	}
    
    
    
  
}