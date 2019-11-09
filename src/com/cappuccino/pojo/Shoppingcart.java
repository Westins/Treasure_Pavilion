package com.cappuccino.pojo;

public class Shoppingcart {
	private int shoppingCartld, goodsId, shoppingCartNum, userId, shoppingCartState;
	private String shoppingCartModel,shoppingCartColor;
	// -- µ¥Íþ -- go
	private Goods goods;
	private Shops shops;
	// -- µ¥Íþ -- end 	
	public Shops getShops() {
		return shops;
	}

	public void setShops(Shops shops) {
		this.shops = shops;
	}

	public String getShoppingCartColor() {
		return shoppingCartColor;
	}

	public void setShoppingCartColor(String shoppingCartColor) {
		this.shoppingCartColor = shoppingCartColor;
	}

	public int getShoppingCartld() {
		return shoppingCartld;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public void setShoppingCartld(int shoppingCartld) {
		this.shoppingCartld = shoppingCartld;
	}

	public int getGoodsId() {
		return goodsId;
	}

	@Override
	public String toString() {
		return "Shoppingcart [shoppingCartld=" + shoppingCartld + ", goodsId=" + goodsId + ", shoppingCartNum="
				+ shoppingCartNum + ", userId=" + userId + ", shoppingCartState=" + shoppingCartState
				+ ", shoppingCartModel=" + shoppingCartModel + ", shoppingCartColor=" + shoppingCartColor + ", goods="
				+ goods + ", shops=" + shops + "]";
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public int getShoppingCartNum() {
		return shoppingCartNum;
	}

	public void setShoppingCartNum(int shoppingCartNum) {
		this.shoppingCartNum = shoppingCartNum;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getShoppingCartState() {
		return shoppingCartState;
	}

	public void setShoppingCartState(int shoppingCartState) {
		this.shoppingCartState = shoppingCartState;
	}

	public String getShoppingCartModel() {
		return shoppingCartModel;
	}

	public void setShoppingCartModel(String shoppingCartModel) {
		this.shoppingCartModel = shoppingCartModel;
	}
}
