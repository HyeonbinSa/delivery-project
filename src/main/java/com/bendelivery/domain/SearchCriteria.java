package com.bendelivery.domain;

public class SearchCriteria extends Criteria{
	private String keyword;

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Override
	public String toString() {
		return "SearchCriteria [keyword=" + keyword + "]";
	}
	
	
}
