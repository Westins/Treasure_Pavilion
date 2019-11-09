package com.cappuccino.pojo;

public class UserAddress {
	private int no, userId;
	private String address, phone, consignee;

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getUserId() {
		return userId;
	}

	@Override
	public String toString() {
		return "UserAddress [no=" + no + ", userId=" + userId + ", address=" + address + ", phone=" + phone
				+ ", consignee=" + consignee + "]";
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getConsignee() {
		return consignee;
	}

	public void setConsignee(String consignee) {
		this.consignee = consignee;
	}
}
