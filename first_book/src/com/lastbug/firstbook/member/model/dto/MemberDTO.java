package com.lastbug.firstbook.member.model.dto;

import java.sql.Date;

public class MemberDTO implements java.io.Serializable{


	private static final long serialVersionUID = -7685458380084706512L;
	
	private int num;
	private String name;
	private String id;
	private String pwd;
	private String email;
	private String address;
	private java.sql.Date birthDate;
	private int loginCount;
	private int coin;
	private String canVoteYn;
	private String withdrawYn;
	private java.sql.Date withdrawDate;
	private String memclass;
	private String blockYn;
	private java.sql.Date blockDate;
	private java.sql.Date enrollDate;
	
	
	public MemberDTO() {

	
	}


	public MemberDTO(int num, String name, String id, String pwd, String email, String address, Date birthDate,
			int loginCount, int coin, String canVoteYn, String withdrawYn, Date withdrawDate, String memclass,
			String blockYn, Date blockDate, Date enrollDate) {

		this.num = num;
		this.name = name;
		this.id = id;
		this.pwd = pwd;
		this.email = email;
		this.address = address;
		this.birthDate = birthDate;
		this.loginCount = loginCount;
		this.coin = coin;
		this.canVoteYn = canVoteYn;
		this.withdrawYn = withdrawYn;
		this.withdrawDate = withdrawDate;
		this.memclass = memclass;
		this.blockYn = blockYn;
		this.blockDate = blockDate;
		this.enrollDate = enrollDate;
	}


	public int getNum() {
		return num;
	}


	public void setNum(int num) {
		this.num = num;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
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


	public java.sql.Date getBirthDate() {
		return birthDate;
	}


	public void setBirthDate(java.sql.Date birthDate) {
		this.birthDate = birthDate;
	}


	public int getLoginCount() {
		return loginCount;
	}


	public void setLoginCount(int loginCount) {
		this.loginCount = loginCount;
	}


	public int getCoin() {
		return coin;
	}


	public void setCoin(int coin) {
		this.coin = coin;
	}


	public String getCanVoteYn() {
		return canVoteYn;
	}


	public void setCanVoteYn(String canVoteYn) {
		this.canVoteYn = canVoteYn;
	}


	public String getWithdrawYn() {
		return withdrawYn;
	}


	public void setWithdrawYn(String withdrawYn) {
		this.withdrawYn = withdrawYn;
	}


	public java.sql.Date getWithdrawDate() {
		return withdrawDate;
	}


	public void setWithdrawDate(java.sql.Date withdrawDate) {
		this.withdrawDate = withdrawDate;
	}


	public String getMemclass() {
		return memclass;
	}


	public void setMemclass(String memclass) {
		this.memclass = memclass;
	}


	public String getBlockYn() {
		return blockYn;
	}


	public void setBlockYn(String blockYn) {
		this.blockYn = blockYn;
	}


	public java.sql.Date getBlockDate() {
		return blockDate;
	}


	public void setBlockDate(java.sql.Date blockDate) {
		this.blockDate = blockDate;
	}


	public java.sql.Date getEnrollDate() {
		return enrollDate;
	}


	public void setEnrollDate(java.sql.Date enrollDate) {
		this.enrollDate = enrollDate;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "MemberDTO [num=" + num + ", name=" + name + ", id=" + id + ", pwd=" + pwd + ", email=" + email
				+ ", address=" + address + ", birthDate=" + birthDate + ", loginCount=" + loginCount + ", coin=" + coin
				+ ", canVoteYn=" + canVoteYn + ", withdrawYn=" + withdrawYn + ", withdrawDate=" + withdrawDate
				+ ", memclass=" + memclass + ", blockYn=" + blockYn + ", blockDate=" + blockDate + ", enrollDate="
				+ enrollDate + "]";
	}
	
	
	
	
	

	
	
}
