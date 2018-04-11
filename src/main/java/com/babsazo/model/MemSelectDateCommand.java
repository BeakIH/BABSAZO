package com.babsazo.model;

import java.sql.Timestamp;

public class MemSelectDateCommand {
		
		//고객번호
		private int mem_no;
		
		//고객명
		private String mem_nm;

		//고객 ID
		private String mem_id;
		
		//고객 비밀번호
		private String mem_pw;
		
		//고객 전화번호
		private String mem_tel;
		
		//고객 자택주소
		private String address;
		
		//고객 이메일주소
		private String email;
		
		//고객 이메일 수신여부
		private String email_yn;
		
		//관심매장
		private String fvrt_str_1;
		
		//관심메뉴
		private String fvrt_str_2;
		
		//갱신일자
		private Timestamp insert_date;
		
		
		public int getMem_no() {
			return mem_no;
		}

		public void setMem_no(int mem_no) {
			this.mem_no = mem_no;
		}

		
		public String getMem_nm() {
			return mem_nm;
		}

		public void setMem_nm(String mem_nm) {
			this.mem_nm = mem_nm;
		}

		public String getMem_id() {
			return mem_id;
		}

		public void setMem_id(String mem_id) {
			this.mem_id = mem_id;
		}

		public String getMem_pw() {
			return mem_pw;
		}

		public void setMem_pw(String mem_pw) {
			this.mem_pw = mem_pw;
		}

		public String getMem_tel() {
			return mem_tel;
		}

		public void setMem_tel(String mem_tel) {
			this.mem_tel = mem_tel;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getEmail_yn() {
			return email_yn;
		}

		public void setEmail_yn(String email_yn) {
			this.email_yn = email_yn;
		}

		public String getFvrt_str_1() {
			return fvrt_str_1;
		}

		public void setFvrt_str_1(String fvrt_str_1) {
			this.fvrt_str_1 = fvrt_str_1;
		}

		public String getFvrt_str_2() {
			return fvrt_str_2;
		}

		public void setFvrt_str_2(String fvrt_str_2) {
			this.fvrt_str_2 = fvrt_str_2;
		}

		public Timestamp getInsert_date() {
			return insert_date;
		}

		public void setInsert_date(Timestamp insert_date) {
			this.insert_date = insert_date;
		}
	
		
}
