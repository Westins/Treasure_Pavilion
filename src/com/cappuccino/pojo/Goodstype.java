package com.cappuccino.pojo;

import java.util.List;

public class Goodstype {
	private int goodTypeId;
	private String goodsTypeName;
	// --- µ¥Íþ
	private List<Goodstypes> goodstypes;
	public List<Goodstypes> getGoodstypes() {
		return goodstypes;
	}
	public void setGoodstypes(List<Goodstypes> goodstypes) {
		this.goodstypes = goodstypes;
	}
	// --- µ¥Íþ
	public int getGoodTypeId() {
		return goodTypeId;
	}
	public void setGoodTypeId(int goodTypeId) {
		this.goodTypeId = goodTypeId;
	}
	public String getGoodsTypeName() {
		return goodsTypeName;
	}
	public void setGoodsTypeName(String goodsTypeName) {
		this.goodsTypeName = goodsTypeName;
	}
	@Override
	public String toString() {
		return "Goodstype [goodTypeId=" + goodTypeId + ", goodsTypeName=" + goodsTypeName + ", goodstypes=" + goodstypes
				+ "]";
	}
	
}
