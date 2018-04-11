package com.babsazo.model;

import java.sql.Timestamp;

public class SeatingCommand {
	// 좌석관리번호
	private Integer st_no;

	// 매장번호
	private Integer store_no;

	// 예약일자
	private String bk_date;

	// 예약시간
	private String bk_time;

	// 전체테이블수
	private Integer tot_tbl_cnt;

	// 이용가능테이블수
	private Integer avl_tbl_cnt;

	// 사용중인테이블수
	private Integer cur_tbl_cnt;

	// 갱신일자
	private Timestamp insert_date;

	public Integer getSt_no() {
		return st_no;
	}

	public void setSt_no(Integer st_no) {
		this.st_no = st_no;
	}

	public Integer getStore_no() {
		return store_no;
	}

	public void setStore_no(Integer store_no) {
		this.store_no = store_no;
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

	public Integer getTot_tbl_cnt() {
		return tot_tbl_cnt;
	}

	public void setTot_tbl_cnt(Integer tot_tbl_cnt) {
		this.tot_tbl_cnt = tot_tbl_cnt;
	}

	public Integer getAvl_tbl_cnt() {
		return avl_tbl_cnt;
	}

	public void setAvl_tbl_cnt(Integer avl_tbl_cnt) {
		this.avl_tbl_cnt = avl_tbl_cnt;
	}

	public Integer getCur_tbl_cnt() {
		return cur_tbl_cnt;
	}

	public void setCur_tbl_cnt(Integer cur_tbl_cnt) {
		this.cur_tbl_cnt = cur_tbl_cnt;
	}

	public Timestamp getInsert_date() {
		return insert_date;
	}

	public void setInsert_date(Timestamp insert_date) {
		this.insert_date = insert_date;
	}

	
}
