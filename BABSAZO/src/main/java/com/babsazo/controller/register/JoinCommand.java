package com.babsazo.controller.register;

import java.sql.Timestamp; 

public class JoinCommand {

    private String mem_No;
	private String mem_Name;
	private String mem_id;
	private String mem_pw;
	private String mem_tel; 
	private JoinZipCommand zipcodeCommand;
	private String email;
	private String email_yn;
	private String str1;
	private String str2;
	private Timestamp join_date;
	

/*	private String bday_month;
	private String bday_name;
	private String bday_year;
	private String mem_path;
	private String mem_fileName; */
	
	
	/*		public JoinZipCommand getZipcodeCommand() {
		return zipcodeCommand;
	}
	public void setZipcodeCommand(JoinZipCommand zipcodeCommand) {
		this.zipcodeCommand = zipcodeCommand;
	}
    public String getMem_fileName() {
		return mem_fileName;
	}
	public void setMem_fileName(String mem_fileName) {
		this.mem_fileName = mem_fileName;
	}*/
	
	public String getMem_No() {
		return mem_No;
	}
	public void setMem_No(String mem_No) {
		this.mem_No = mem_No;
	}
	public String getMem_Name() {
		return mem_Name;
	}
	public void setMem_Name(String mem_Name) {
		this.mem_Name = mem_Name;
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
	public JoinZipCommand getZipcodeCommand() {
		return zipcodeCommand;
	}
	public void setZipcodeCommand(JoinZipCommand zipcodeCommand) {
		this.zipcodeCommand = zipcodeCommand;
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
	public String getStr1() {
		return str1;
	}
	public void setStr1(String str1) {
		this.str1 = str1;
	}
	public String getStr2() {
		return str2;
	}
	public void setStr2(String str2) {
		this.str2 = str2;
	}
	public Timestamp getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Timestamp join_date) {
		this.join_date = join_date;
	} 
	public JoinCommand() {
		super();
	}
	
}
	 


