package com.cappuccino.pojo;

import java.util.List;

public class Usergoods {
	private int userGoodsId, goodsId, userId;
	private String userGoodsModel, userGoodsColor;
	private List<Goods> goods;

	public String getUserGoodsModel() {
		return userGoodsModel;
	}

	public void setUserGoodsModel(String userGoodsModel) {
		this.userGoodsModel = userGoodsModel;
	}

	public String getUserGoodsColor() {
		return userGoodsColor;
	}

	public void setUserGoodsColor(String userGoodsColor) {
		this.userGoodsColor = userGoodsColor;
	}

	public int getUserGoodsId() {
		return userGoodsId;
	}

	public List<Goods> getGoods() {
		return goods;
	}

	public void setGoods(List<Goods> goods) {
		this.goods = goods;
	}

	public void setUserGoodsId(int userGoodsId) {
		this.userGoodsId = userGoodsId;
	}

	public int getGoodsId() {
		return goodsId;
	}

	@Override
	public String toString() {
		return "Usergoods [userGoodsId=" + userGoodsId + ", goodsId=" + goodsId + ", userId=" + userId
				+ ", userGoodsModel=" + userGoodsModel + ", userGoodsColor=" + userGoodsColor + ", goods=" + goods
				+ "]";
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
}
