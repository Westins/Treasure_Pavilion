package com.cappuccino.pojo;

import java.util.List;

public class Usershops {
	private int userShopsId, shopsId, userId;
	private List<Shops> shops;

	public int getUserShopsId() {
		return userShopsId;
	}

	public void setUserShopsId(int userShopsId) {
		this.userShopsId = userShopsId;
	}

	public List<Shops> getShops() {
		return shops;
	}

	public void setShops(List<Shops> shops) {
		this.shops = shops;
	}

	public int getShopsId() {
		return shopsId;
	}

	@Override
	public String toString() {
		return "Usershops [userShopsId=" + userShopsId + ", shopsId=" + shopsId + ", userId=" + userId + ", shops="
				+ shops + "]";
	}

	public void setShopsId(int shopsId) {
		this.shopsId = shopsId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
}
