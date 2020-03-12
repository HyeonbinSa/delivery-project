package com.bendelivery.domain;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageMaker {
	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	
	private int displayPageNum =10;
	
	private Criteria cri;
	
	
	@Override
	public String toString() {
		return "PageMaker [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage + ", prev="
				+ prev + ", next=" + next + ", displayPageNum=" + displayPageNum + ", cri=" + cri + "]";
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public Criteria getCri() {
		return cri;
	}

	public void setCri(Criteria cri) {
		this.cri = cri;
	}
	
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		
		calcData();
	}
	
	private void calcData() {
		// 끝페이지 계산, Math.ceil -> 소숫점 올림. 
		endPage = (int)(Math.ceil(cri.getPage()/(double)displayPageNum) * displayPageNum);
		// 마지막 페이지 - 표시할 페이지 갯수 +1 => 20(마지막) - 10 + 1 = 11(시작)
		startPage = (endPage - displayPageNum)+1;
		
		// 실제 데이터 갯수 / 페이지당 갯수 (올림) ==> 마지막 페이지수나옴 
		int tempEndPage = (int)(Math.ceil(totalCount/(double)cri.getPerPageNum()));
		
		// 20, 30 으로 떨어지지 않을 때, 즉 실제 데이터로 계산한 마지막페이지가 작을때 
		if(endPage > tempEndPage) {
			// 실제 데이터를 통해 구한 페이지를 마지막페이지로 설정
			endPage = tempEndPage;
		}
		
		// 시작 페이지가 1페이지면 비활성
		prev = startPage == 1 ? false : true;
		// 마지막 페이지 * 페이지당 개수 >= 실제 데이터 개수 ==> next 버튼 비활성화
		next = endPage * cri.getPerPageNum() >= totalCount ? false : true;
	}
	
	// 페이지 처리 - 쿼리 만들기 
	public String makeQuery(int page) {
		UriComponents uri = UriComponentsBuilder.newInstance().queryParam("page", page).queryParam("perPageNum", cri.getPerPageNum()).build();
		return uri.toUriString();
		
	}
}
