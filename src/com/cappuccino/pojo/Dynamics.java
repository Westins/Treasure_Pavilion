package com.cappuccino.pojo;

public class Dynamics {
	private int dynamicsId, userId;

	public int getDynamicsId() {
		return dynamicsId;
	}

	public void setDynamicsId(int dynamicsId) {
		this.dynamicsId = dynamicsId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "Dynamics [dynamicsId=" + dynamicsId + ", userId=" + userId + ", dynamicsTest=" + dynamicsTest
				+ ", dynamicsImg=" + dynamicsImg + ", dynamicsVideo=" + dynamicsVideo + "]";
	}

	public String getDynamicsTest() {
		return dynamicsTest;
	}

	public void setDynamicsTest(String dynamicsTest) {
		this.dynamicsTest = dynamicsTest;
	}

	public String getDynamicsImg() {
		return dynamicsImg;
	}

	public void setDynamicsImg(String dynamicsImg) {
		this.dynamicsImg = dynamicsImg;
	}

	public String getDynamicsVideo() {
		return dynamicsVideo;
	}

	public void setDynamicsVideo(String dynamicsVideo) {
		this.dynamicsVideo = dynamicsVideo;
	}

	private String dynamicsTest, dynamicsImg, dynamicsVideo;
}
