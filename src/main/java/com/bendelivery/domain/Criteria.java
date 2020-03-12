package com.bendelivery.domain;

public class Criteria {
	private int page;
	private int perPageNum;
	
	// 기본 설정 (10개 씩)
	public Criteria() {
		this.page = 1;
		this.perPageNum = 10;
	}
	
	// 페이지 설정
	public void setPage(int page) {
		// 0 이하일 경우 1로 설정 
		if(page <= 0) {
			this.page = 1;
			return;
		}
		this.page = page;
	}
	// 페이지 당 출력 수 설정 
	public void setPerPageNum(int perPageNum) {
		if(perPageNum <= 0 || perPageNum > 100) {
			this.perPageNum = 10;
			return;
		}
		this.perPageNum = perPageNum;
	}
	
	public int getPage() {
		return page;
	}
	
	// MyBatis에 적용하기 위해서(limits ###, ###)
	public int getPageStart() {
		return (this.page -1) * perPageNum;
	}
	// MaBatis에 사용됨;
	public int getPerPageNum() {
		return this.perPageNum;
	}

	@Override
	public String toString() {
		return "Criteria [page=" + page + ", perPageNum=" + perPageNum + "]";
	}
	
}
