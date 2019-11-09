package com.cappuccino.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cappuccino.dao.GoodsReviewMapper;
import com.cappuccino.dao.GoodstypesMapper;
import com.cappuccino.pojo.Goodsreview;
import com.cappuccino.pojo.Goodstypes;
import com.cappuccino.service.GoodsReviewMapperService;
import com.cappuccino.service.GoodstypesMapperService;

@Service
public class GoodsReviewMapperServiceImpl implements GoodsReviewMapperService {

	@Autowired
	private GoodsReviewMapper grm;

	@Override
	public int userAddGoodsReview(Goodsreview goodsreview) {
		// TODO Auto-generated method stub
		return grm.userAddGoodsReview(goodsreview);
	}
	
}
