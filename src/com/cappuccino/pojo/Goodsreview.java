package com.cappuccino.pojo;

public class Goodsreview {
	private int goodsReviewId, goodsReviewRated, userId, goodsId;
	// -------  µ¥Íþ 6-15 -----
	private UserInfo userinfo;
	// -------  µ¥Íþ 6-15 -----
	

	public int getGoodsReviewId() {
		return goodsReviewId;
	}

	public UserInfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(UserInfo userinfo) {
		this.userinfo = userinfo;
	}

	public void setGoodsReviewId(int goodsReviewId) {
		this.goodsReviewId = goodsReviewId;
	}

	public int getGoodsReviewRated() {
		return goodsReviewRated;
	}

	public void setGoodsReviewRated(int goodsReviewRated) {
		this.goodsReviewRated = goodsReviewRated;
	}


	@Override
	public String toString() {
		return "Goodsreview [goodsReviewId=" + goodsReviewId + ", goodsReviewRated=" + goodsReviewRated + ", userId="
				+ userId + ", goodsId=" + goodsId + ", userinfo=" + userinfo + ", goodsReviewTest=" + goodsReviewTest
				+ ", goodsReviewImg=" + goodsReviewImg + ", goodsReviewVideo=" + goodsReviewVideo + "]";
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public String getGoodsReviewTest() {
		return goodsReviewTest;
	}

	public void setGoodsReviewTest(String goodsReviewTest) {
		this.goodsReviewTest = goodsReviewTest;
	}

	public String getGoodsReviewImg() {
		return goodsReviewImg;
	}

	public void setGoodsReviewImg(String goodsReviewImg) {
		this.goodsReviewImg = goodsReviewImg;
	}

	public String getGoodsReviewVideo() {
		return goodsReviewVideo;
	}

	public void setGoodsReviewVideo(String goodsReviewVideo) {
		this.goodsReviewVideo = goodsReviewVideo;
	}

	private String goodsReviewTest, goodsReviewImg, goodsReviewVideo;
}
