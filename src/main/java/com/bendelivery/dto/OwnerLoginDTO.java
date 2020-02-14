package com.bendelivery.dto;

public class OwnerLoginDTO {
	private String owner_id;
	private String owner_pw;
	private boolean useCookie;
	public String getOwner_id() {
		return owner_id;
	}

	public void setOwner_id(String owner_id) {
		this.owner_id = owner_id;
	}

	public String getOwner_pw() {
		return owner_pw;
	}

	public void setOwner_pw(String owner_pw) {
		this.owner_pw = owner_pw;
	}

	@Override
	public String toString() {
		return "OwnerLoginDTO [owner_id=" + owner_id + ", owner_pw=" + owner_pw + ", useCookie=" + useCookie + "]";
	}
	
	public boolean isUseCookie() {
		return useCookie;
	}
	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}
}
