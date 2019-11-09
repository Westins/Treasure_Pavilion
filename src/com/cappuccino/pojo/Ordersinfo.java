package com.cappuccino.pojo;

import java.util.Date;

public class Ordersinfo {
	private int ordersInfoId, goodsId, ordersInfoNum,userId,ordersSongPrice,ordersInfoState;
	private String  ordersInfoModel,ordersInfoNo,ordersAddress,ordersPhone,ordersConsignee;
	private double ordersInfoPrice;
	private Goods goods;
	private Date ordersInfoTime;
	private UserInfo user;


	public UserInfo getUser() {
		return user;
	}

	public void setUser(UserInfo user) {
		this.user = user;
	}

	public String getOrdersAddress() {
		return ordersAddress;
	}

	public int getOrdersSongPrice() {
		return ordersSongPrice;
	}

	public void setOrdersSongPrice(int ordersSongPrice) {
		this.ordersSongPrice = ordersSongPrice;
	}

	public void setOrdersAddress(String ordersAddress) {
		this.ordersAddress = ordersAddress;
	}

	public String getOrdersPhone() {
		return ordersPhone;
	}

	public void setOrdersPhone(String ordersPhone) {
		this.ordersPhone = ordersPhone;
	}

	public String getOrdersConsignee() {
		return ordersConsignee;
	}

	public void setOrdersConsignee(String ordersConsignee) {
		this.ordersConsignee = ordersConsignee;
	}

	public Date getOrdersInfoTime() {
		return ordersInfoTime;
	}

	public void setOrdersInfoTime(Date ordersInfoTime) {
		this.ordersInfoTime = ordersInfoTime;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public double getOrdersInfoPrice() {
		return ordersInfoPrice;
	}

	public void setOrdersInfoPrice(double ordersInfoPrice) {
		this.ordersInfoPrice = ordersInfoPrice;
	}

	public int getOrdersInfoId() {
		return ordersInfoId;
	}

	public void setOrdersInfoId(int ordersInfoId) {
		this.ordersInfoId = ordersInfoId;
	}


	public String getOrdersInfoNo() {
		return ordersInfoNo;
	}

	public void setOrdersInfoNo(String ordersInfoNo) {
		this.ordersInfoNo = ordersInfoNo;
	}

	@Override
	public String toString() {
		return "Ordersinfo [ordersInfoId=" + ordersInfoId + ", goodsId=" + goodsId + ", ordersInfoNum=" + ordersInfoNum
				+ ", userId=" + userId + ", ordersSongPrice=" + ordersSongPrice + ", ordersInfoState=" + ordersInfoState
				+ ", ordersInfoModel=" + ordersInfoModel + ", ordersInfoNo=" + ordersInfoNo + ", ordersAddress="
				+ ordersAddress + ", ordersPhone=" + ordersPhone + ", ordersConsignee=" + ordersConsignee
				+ ", ordersInfoPrice=" + ordersInfoPrice + ", goods=" + goods + ", ordersInfoTime=" + ordersInfoTime
				+ ", user=" + user + "]";
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}


	public int getOrdersInfoNum() {
		return ordersInfoNum;
	}

	public void setOrdersInfoNum(int ordersInfoNum) {
		this.ordersInfoNum = ordersInfoNum;
	}

	public String getOrdersInfoModel() {
		return ordersInfoModel;
	}

	public void setOrdersInfoModel(String ordersInfoModel) {
		this.ordersInfoModel = ordersInfoModel;
	}

	public int getOrdersInfoState() {
		return ordersInfoState;
	}

	public void setOrdersInfoState(int ordersInfoState) {
		this.ordersInfoState = ordersInfoState;
	}

}
