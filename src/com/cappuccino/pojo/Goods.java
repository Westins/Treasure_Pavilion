package com.cappuccino.pojo;

import java.util.Date;
import java.util.List;

public class Goods {
	private int goodsId, goodsTypeId, shopsId, goodsSalesVolume;
	private String goodsName, goodsImgIntroduce, goodsVideoIntroduce, goodsTestIntroduce, goodsModel, goodsState,
			goodsImg,goodsColor;
	private double goodsOriginalPrice, goodsDiscount;
	private Date goodsTime;
	private List<Goodsreview> goodsreview;
	// --- µ¥Íþ -- go
	private Shops shops;
	public Shops getShops() {
		return shops;
	}

	public void setShops(Shops shops) {
		this.shops = shops;
	}

	// -- µ¥Íþ -- end
	public String getGoodsColor() {
		return goodsColor;
	}

	public void setGoodsColor(String goodsColor) {
		this.goodsColor = goodsColor;
	}

	private Goodstypes goodstypes;

	public Goodstypes getGoodstypes() {
		return goodstypes;
	}

	public void setGoodstypes(Goodstypes goodstypes) {
		this.goodstypes = goodstypes;
	}

	public List<Goodsreview> getGoodsreview() {
		return goodsreview;
	}

	public void setGoodsreview(List<Goodsreview> goodsreview) {
		this.goodsreview = goodsreview;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public String getGoodsImg() {
		return goodsImg;
	}

	public void setGoodsImg(String goodsImg) {
		this.goodsImg = goodsImg;
	}


	@Override
	public String toString() {
		return "Goods [goodsId=" + goodsId + ", goodsTypeId=" + goodsTypeId + ", shopsId=" + shopsId
				+ ", goodsSalesVolume=" + goodsSalesVolume + ", goodsName=" + goodsName + ", goodsImgIntroduce="
				+ goodsImgIntroduce + ", goodsVideoIntroduce=" + goodsVideoIntroduce + ", goodsTestIntroduce="
				+ goodsTestIntroduce + ", goodsModel=" + goodsModel + ", goodsState=" + goodsState + ", goodsImg="
				+ goodsImg + ", goodsColor=" + goodsColor + ", goodsOriginalPrice=" + goodsOriginalPrice
				+ ", goodsDiscount=" + goodsDiscount + ", goodsTime=" + goodsTime + ", goodsreview=" + goodsreview
				+ ", shops=" + shops + ", goodstypes=" + goodstypes + "]";
	}

	public int getGoodsTypeId() {
		return goodsTypeId;
	}

	public void setGoodsTypeId(int goodsTypeId) {
		this.goodsTypeId = goodsTypeId;
	}

	public int getShopsId() {
		return shopsId;
	}

	public void setShopsId(int shopsId) {
		this.shopsId = shopsId;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getGoodsImgIntroduce() {
		return goodsImgIntroduce;
	}

	public void setGoodsImgIntroduce(String goodsImgIntroduce) {
		this.goodsImgIntroduce = goodsImgIntroduce;
	}

	public String getGoodsVideoIntroduce() {
		return goodsVideoIntroduce;
	}

	public void setGoodsVideoIntroduce(String goodsVideoIntroduce) {
		this.goodsVideoIntroduce = goodsVideoIntroduce;
	}

	public String getGoodsTestIntroduce() {
		return goodsTestIntroduce;
	}

	public void setGoodsTestIntroduce(String goodsTestIntroduce) {
		this.goodsTestIntroduce = goodsTestIntroduce;
	}

	public String getGoodsModel() {
		return goodsModel;
	}

	public int getGoodsSalesVolume() {
		return goodsSalesVolume;
	}

	public void setGoodsSalesVolume(int goodsSalesVolume) {
		this.goodsSalesVolume = goodsSalesVolume;
	}

	public void setGoodsModel(String goodsModel) {
		this.goodsModel = goodsModel;
	}

	public String getGoodsState() {
		return goodsState;
	}

	public void setGoodsState(String goodsState) {
		this.goodsState = goodsState;
	}

	public double getGoodsOriginalPrice() {
		return goodsOriginalPrice;
	}

	public void setGoodsOriginalPrice(double goodsOriginalPrice) {
		this.goodsOriginalPrice = goodsOriginalPrice;
	}

	public double getGoodsDiscount() {
		return goodsDiscount;
	}

	public void setGoodsDiscount(double goodsDiscount) {
		this.goodsDiscount = goodsDiscount;
	}

	public Date getGoodsTime() {
		return goodsTime;
	}

	public void setGoodsTime(Date goodsTime) {
		this.goodsTime = goodsTime;
	}
}
