package com.mega.s1.util;

import lombok.Data;

@Data
public class Pager {

	private Long curPage;
	private Integer perPage;
	
	private long startRow;
	private long lastRow;
	
	private long totalPage;
	
	private long totalBlock;
	private long curBlock;
	
	private long startNum;
	private long lastNum;
	
	private String kind;
	private String search;
	
	public void makeRow() {
		this.startRow = (this.getCurPage()-1)*this.getPerPage();
		this.lastRow = this.getCurPage()*this.getPerPage();
	}
	
	public void makePage(long totalCount) {
		this.totalPage = totalCount/this.getPerPage();
		
		if(totalCount % this.getPerPage() != 0) {
			this.totalPage++;
		}
		
		long perBlock = 10L;
		this.totalBlock = totalPage/perBlock;
		
		if(totalPage % perBlock != 0) {
			this.totalBlock++;
		}
		
		this.curBlock = this.curPage/perBlock;
		
		if(this.curPage % perBlock != 0) {
			this.curBlock++;
		}
		
		this.startNum = (this.curBlock-1)*perBlock+1;
		this.lastNum = curBlock*perBlock;
		
		if(this.curBlock == this.totalBlock) {
			this.lastNum = this.totalPage;
		}
	}
	
	public Long getCurPage() {
		if(this.curPage == null || this.curPage == 0) {
			this.curPage = 1L;
		}
		return curPage;
	}
	
	public Integer getPerPage() {
		if(this.perPage == null || this.perPage == 0) {
			this.perPage = 10;
		}
		return perPage;
	}
	
	public String getSearch() {
		if(this.search == null) {
			this.search = "";
		}
		return search;
	}
	
}
