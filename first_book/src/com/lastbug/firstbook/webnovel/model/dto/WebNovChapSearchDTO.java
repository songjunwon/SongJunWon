package com.lastbug.firstbook.webnovel.model.dto;

import java.io.Serializable;

public class WebNovChapSearchDTO implements Serializable {


	private static final long serialVersionUID = -5599879095724072423L;

	
	private WebNovelInfoDTO webNovNum;
	private WebNovChapNumDTO webNovChapNum;
	
	public WebNovChapSearchDTO() {
//		super();
	}
	
	public WebNovChapSearchDTO(WebNovelInfoDTO webNovNum, WebNovChapNumDTO webNovChapNum) {
		super();
		this.webNovNum = webNovNum;
		this.webNovChapNum = webNovChapNum;
	}
	@Override
	public String toString() {
		return "WebNovChapSearchDTO [webNovNum=" + webNovNum + ", webNovChapNum=" + webNovChapNum + "]";
	}
	public WebNovelInfoDTO getWebNovNum() {
		return webNovNum;
	}
	public void setWebNovNum(WebNovelInfoDTO webNovNum) {
		this.webNovNum = webNovNum;
	}
	public WebNovChapNumDTO getWebNovChapNum() {
		return webNovChapNum;
	}
	public void setWebNovChapNum(WebNovChapNumDTO webNovChapNum) {
		this.webNovChapNum = webNovChapNum;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
