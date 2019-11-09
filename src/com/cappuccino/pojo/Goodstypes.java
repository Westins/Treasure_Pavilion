package com.cappuccino.pojo;

public class Goodstypes {// ---µ¥Íþ
	private int goodstypeId, goodstypesId;
	

	public int getGoodstypeId() {
		return goodstypeId;
	}

	public void setGoodstypeId(int goodstypeId) {
		this.goodstypeId = goodstypeId;
	}

	private String goodstypesName;

	public int getGoodstypesId() {
		return goodstypesId;
	}

	public void setGoodstypesId(int goodstypesId) {
		this.goodstypesId = goodstypesId;
	}

	@Override
	public String toString() {
		return "Goodstypes [goodstypeId=" + goodstypeId + ", goodstypesId=" + goodstypesId + ", goodstypesName="
				+ goodstypesName + "]";
	}

	public String getGoodstypesName() {
		return goodstypesName;
	}

	public void setGoodstypesName(String goodstypesName) {
		this.goodstypesName = goodstypesName;
	}
}
