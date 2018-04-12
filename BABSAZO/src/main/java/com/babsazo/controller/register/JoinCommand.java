package com.babsazo.controller.register;

import java.sql.Timestamp;
import org.springframework.web.multipart.MultipartFile; 

public class JoinCommand {

    private String memberNo;
	private String memberType;
	private String age;
	private String job;
	private JoinZipCommand zipcodeCommand;
	private String height; 
	private String weight;
	private String memberName;
	private String birthday;
	private String blacklist;
	private Timestamp re_date; 
	private String phone;  
	private String passwd;
	private String gender;
	private String email;
	private String bday_month;
	private String bday_name;
	private String bday_year;
	private String mem_path;
	private String mem_fileName;
	
	
	
	public JoinZipCommand getZipcodeCommand() {
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
	}
	private MultipartFile imageFile;
	
	public MultipartFile getImageFile() {
		return imageFile;
	}
	public void setImageFile(MultipartFile imageFile) {
		System.out.println("imageFile setter");
		this.imageFile = imageFile;
	}
	public String getMem_path() {
		return mem_path;
	}
	public void setMem_path(String mem_path) {
		this.mem_path = mem_path;
	}
	public String getBday_year() {
		return bday_year;
	}
	public void setBday_year(String bday_year) {
		this.bday_year = bday_year;
	}
	public String getBday_month() {
		return bday_month;
	}
	public void setBday_month(String bday_month) {
		this.bday_month = bday_month;
	}
	public String getBday_name() {
		return bday_name;
	}
	public void setBday_name(String bday_name) {
		this.bday_name = bday_name;
	}
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}
	public String getMemberType() {
		return memberType;
	}
	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getBlacklist() {
		return blacklist;
	}
	public void setBlacklist(String blacklist) {
		this.blacklist = blacklist;
	}
	public Timestamp getRe_date() {
		return re_date;
	}
	public void setRe_date(Timestamp re_date) {
		this.re_date = re_date;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public JoinCommand() {
		super();
		// TODO Auto-generated constructor stub
	}

}
