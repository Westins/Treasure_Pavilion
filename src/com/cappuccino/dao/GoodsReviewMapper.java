package com.cappuccino.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.cappuccino.pojo.Goodsreview;
import com.cappuccino.pojo.Mainimg;

@Repository("GoodsReviewMapper")
public interface GoodsReviewMapper {
	public int userAddGoodsReview(Goodsreview goodsreview);
}
