package com.babsazo.model;

import java.sql.*;
import java.util.Date;

public class ListCommand {
	
	private int store_no;
	private int emp_no;
	private String cate_nm;
	private String store_nm;
	private String store_exp;
	private int store_floor;
	private String store_tel;
	private String store_info;
	private String store_exp_dt;
	private String store_url;
	private String simg_root;
	private int avg_price;
	private int preference;
	private int cur_tbl_cnt;
	private String pimg_root;
	private String emp_nm;
	
	private int st_no;
	private String bk_date;
	private String bk_time;
	private int tot_tbl_cnt;
	private int avl_tbl_cnt;
	private Date insert_date;
	
	
	public ListCommand() {

	}

	public int getSt_no() {
		return st_no;
	}


	public void setSt_no(int st_no) {
		this.st_no = st_no;
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



	public int getTot_tbl_cnt() {
		return tot_tbl_cnt;
	}



	public void setTot_tbl_cnt(int tot_tbl_cnt) {
		this.tot_tbl_cnt = tot_tbl_cnt;
	}



	public int getAvl_tbl_cnt() {
		return avl_tbl_cnt;
	}



	public void setAvl_tbl_cnt(int avl_tbl_cnt) {
		this.avl_tbl_cnt = avl_tbl_cnt;
	}



	public Date getInsert_date() {
		return insert_date;
	}



	public void setInsert_date(Date insert_date) {
		this.insert_date = insert_date;
	}



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

	public int getStore_floor() {
		return store_floor;
	}

	public void setStore_floor(int store_floor) {
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

	@Override
	public String toString() {
		return "ListCommand [store_no=" + store_no + ", emp_no=" + emp_no + ", cate_nm=" + cate_nm + ", store_nm="
				+ store_nm + ", store_exp=" + store_exp + ", store_floor=" + store_floor + ", store_tel=" + store_tel
				+ ", store_info=" + store_info + ", store_exp_dt=" + store_exp_dt + ", store_url=" + store_url
				+ ", simg_root=" + simg_root + ", avg_price=" + avg_price + ", preference=" + preference
				+ ", cur_tbl_cnt=" + cur_tbl_cnt + ", pimg_root=" + pimg_root + ", emp_nm=" + emp_nm + ", st_no="
				+ st_no + ", bk_date=" + bk_date + ", bk_time=" + bk_time + ", tot_tbl_cnt=" + tot_tbl_cnt
				+ ", avl_tbl_cnt=" + avl_tbl_cnt + ", insert_date=" + insert_date + "]";
	}
}
