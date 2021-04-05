package com.greedy.jsp.member.model.dto;

import java.sql.Date;

public class MemberDTO implements java.io.Serializable{

	private static final long serialVersionUID = -6696946285862806302L;
		
	private int no;
	private String id;
	private String pwd;
	private String nickName;
	private String phone;
	private String email;
	private String address;
	private java.sql.Date enrollDate;
	private String role;
	private String status;
	
	
	
	public MemberDTO() {
		
	}



	public MemberDTO(int no, String id, String pwd, String nickName, String phone, String email, String address,
			Date enrollDate, String role, String status) {
		
		this.no = no;
		this.id = id;
		this.pwd = pwd;
		this.nickName = nickName;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.enrollDate = enrollDate;
		this.role = role;
		this.status = status;
	}



	public int getNo() {
		return no;
	}



	public void setNo(int no) {
		this.no = no;
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getPwd() {
		return pwd;
	}



	public void setPwd(String pwd) {
		this.pwd = pwd;
	}



	public String getNickName() {
		return nickName;
	}



	public void setNickName(String nickName) {
		this.nickName = nickName;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public java.sql.Date getEnrollDate() {
		return enrollDate;
	}



	public void setEnrollDate(java.sql.Date enrollDate) {
		this.enrollDate = enrollDate;
	}



	public String getRole() {
		return role;
	}



	public void setRole(String role) {
		this.role = role;
	}



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}



	@Override
	public String toString() {
		return "MemberDTO [no=" + no + ", id=" + id + ", pwd=" + pwd + ", nickName=" + nickName + ", phone=" + phone
				+ ", email=" + email + ", address=" + address + ", enrollDate=" + enrollDate + ", role=" + role
				+ ", status=" + status + "]";
	}
	
	
}
