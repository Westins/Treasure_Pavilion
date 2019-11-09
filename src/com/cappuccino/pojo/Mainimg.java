package com.cappuccino.pojo;

public class Mainimg {
	private int mainImgId, goodsId;
	private String mainTest, mainImg;

	public int getMainImgId() {
		return mainImgId;
	}

	public void setMainImgId(int mainImgId) {
		this.mainImgId = mainImgId;
	}

	public int getGoodsId() {
		return goodsId;
	}

	@Override
	public String toString() {
		return "Mainimg [mainImgId=" + mainImgId + ", goodsId=" + goodsId + ", mainTest=" + mainTest + ", mainImg="
				+ mainImg + ", goods=" + goods + "]";
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public String getMainTest() {
		return mainTest;
	}

	public void setMainTest(String mainTest) {
		this.mainTest = mainTest;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public String getMainImg() {
		return mainImg;
	}

	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}
	private Goods goods;
}
