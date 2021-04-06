package com.lastbug.firstbook.webnovel.model.dto;

import java.io.Serializable;

public class WebNovelDetailDTO implements Serializable{

	private static final long serialVersionUID = 1L;

	private int webNovNum;
	private int chapNum;
	private String payOrNot;
	private String webNovContent;
	public WebNovelDetailDTO(int webNovNum, int chapNum, String payOrNot, String webNovContent) {
		super();
		this.webNovNum = webNovNum;
		this.chapNum = chapNum;
		this.payOrNot = payOrNot;
		this.webNovContent = webNovContent;
	}
	public WebNovelDetailDTO() {
		super();
	}
	@Override
	public String toString() {
		return "WebNovelDetailDTO [webNovNum=" + webNovNum + ", chapNum=" + chapNum + ", payOrNot=" + payOrNot
				+ ", webNovContent=" + webNovContent + "]";
	}
	public int getWebNovNum() {
		return webNovNum;
	}
	public void setWebNovNum(int webNovNum) {
		this.webNovNum = webNovNum;
	}
	public int getChapNum() {
		return chapNum;
	}
	public void setChapNum(int chapNum) {
		this.chapNum = chapNum;
	}
	public String getPayOrNot() {
		return payOrNot;
	}
	public void setPayOrNot(String payOrNot) {
		this.payOrNot = payOrNot;
	}
	public String getWebNovContent() {
		return webNovContent;
	}
	public void setWebNovContent(String webNovContent) {
		this.webNovContent = webNovContent;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
