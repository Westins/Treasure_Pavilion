package com.cappuccino.pojo;

import java.util.Date;
import java.util.List;

public class Shops {
	private int shopsId, shopsSalesVolume,UserId,shopState;
	private String shopsName, shopsLogo, shopsImgIntroduce, shopsVideoIntroduce,shopsTextIntroduce;
	private double shopsSales;
	private Date shopsTime;
	private List<Goods> goods;
	private UserInfo userinfo;
	
	public int getShopState() {
		return shopState;
	}

	public Date getShopsTime() {
		return shopsTime;
	}

	public void setShopsTime(Date shopsTime) {
		this.shopsTime = shopsTime;
	}

	public void setShopState(int shopState) {
		this.shopState = shopState;
	}

	public int getUserId() {
		return UserId;
	}

	public void setUserId(int userId) {
		UserId = userId;
	}


	public int getShopsId() {
		return shopsId;
	}

	public UserInfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(UserInfo userinfo) {
		this.userinfo = userinfo;
	}

	public String getShopsTextIntroduce() {
		return shopsTextIntroduce;
	}

	public void setShopsTextIntroduce(String shopsTextIntroduce) {
		this.shopsTextIntroduce = shopsTextIntroduce;
	}

	public void setShopsId(int shopsId) {
		this.shopsId = shopsId;
	}

	public int getShopsSalesVolume() {
		return shopsSalesVolume;
	}


	public List<Goods> getGoods() {
		return goods;
	}

	public void setGoods(List<Goods> goods) {
		this.goods = goods;
	}

	public void setShopsSalesVolume(int shopsSalesVolume) {
		this.shopsSalesVolume = shopsSalesVolume;
	}

	public String getShopsName() {
		return shopsName;
	}

	@Override
	public String toString() {
		return "Shops [shopsId=" + shopsId + ", shopsSalesVolume=" + shopsSalesVolume + ", UserId=" + UserId
				+ ", shopState=" + shopState + ", shopsName=" + shopsName + ", shopsLogo=" + shopsLogo
				+ ", shopsImgIntroduce=" + shopsImgIntroduce + ", shopsVideoIntroduce=" + shopsVideoIntroduce
				+ ", shopsTextIntroduce=" + shopsTextIntroduce + ", shopsSales=" + shopsSales + ", shopsTime="
				+ shopsTime + ", goods=" + goods + ", userinfo=" + userinfo + "]";
	}

	public void setShopsName(String shopsName) {
		this.shopsName = shopsName;
	}

	public String getShopsLogo() {
		return shopsLogo;
	}

	public void setShopsLogo(String shopsLogo) {
		this.shopsLogo = shopsLogo;
	}

	public String getShopsImgIntroduce() {
		return shopsImgIntroduce;
	}

	public void setShopsImgIntroduce(String shopsImgIntroduce) {
		this.shopsImgIntroduce = shopsImgIntroduce;
	}

	public String getShopsVideoIntroduce() {
		return shopsVideoIntroduce;
	}

	public void setShopsVideoIntroduce(String shopsVideoIntroduce) {
		this.shopsVideoIntroduce = shopsVideoIntroduce;
	}

	public double getShopsSales() {
		return shopsSales;
	}

	public void setShopsSales(double shopsSales) {
		this.shopsSales = shopsSales;
	}
}
