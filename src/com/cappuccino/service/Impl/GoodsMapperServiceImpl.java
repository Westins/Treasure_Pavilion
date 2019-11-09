package com.cappuccino.service.Impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cappuccino.dao.GoodsMapper;
import com.cappuccino.pojo.Goods;
import com.cappuccino.pojo.Goodsreview;
import com.cappuccino.pojo.Shops;
import com.cappuccino.service.GoodsMapperService;

@Service
public class GoodsMapperServiceImpl implements GoodsMapperService {
	@Autowired
	private GoodsMapper gm;

	@Override
	public List<Goods> getGoodsInfoByVolume(@Param("all")String all,@Param("desc")String desc) {
		// TODO Auto-generated method stub
		return gm.getGoodsInfoByVolume(all,desc);
	}

	@Override
	public List<Goods> getGoodsInfoByGoosTime(String all, String desc) {
		// TODO Auto-generated method stub
		return gm.getGoodsInfoByGoosTime(all, desc);
	}

	@Override
	public List<Goods> getGoodsInfoByGoodsDiscount(String Discount, String all, String desc) {
		// TODO Auto-generated method stub
		return gm.getGoodsInfoByGoodsDiscount(Discount, all, desc);
	}

	@Override
	public List<Goods> getGoodsInfo(String GoodsName) {
		// TODO Auto-generated method stub
		return gm.getGoodsInfo(GoodsName);
	}

	@Override
	public List<Goods> getGoodsInfoByGoodsId(int GoodsId) {
		// TODO Auto-generated method stub
		return gm.getGoodsInfoByGoodsId(GoodsId);
	}

	@Override
	public List<Goods> getGoodsInfoByGoodsTypes(int GoodsTypeId) {
		return gm.getGoodsInfoByGoodsTypes(GoodsTypeId);		
	}

	@Override
	public List<Goods> getGoodsInfoByGoodsPrice(String desc) { 
		// TODO Auto-generated method stub
		return gm.getGoodsInfoByGoodsPrice(desc);
	}

	@Override
	public int addGoodsSalesVolume(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return gm.addGoodsSalesVolume(map);
	}
	@Override
	public List<Goods> getGoodsInfoByGoodsTypeId(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return gm.getGoodsInfoByGoodsTypeId(map);
	}
	// 安卓接口 ---------------------------- 
	@Override
	public List<Goods> GetgoodsByVolumeLimit12() {
		// TODO Auto-generated method stub
		return gm.GetgoodsByVolumeLimit12();
	}
	@Override
	public List<Goodsreview> getGoodsReview(int goodsId) {
		// TODO Auto-generated method stub
		return gm.getGoodsReview(goodsId);
	}
	// 安卓接口 ---------------------------- 
	
	// 欧武淼 ---------------------------- 
	@Override
	public int AddGoodsByShops(Goods goods) {
		// TODO Auto-generated method stub
		return gm.AddGoodsByShops(goods);
	}

	@Override
	public int UpdateByGoodsId(String goodsId) {
		// TODO Auto-generated method stub
		return gm.UpdateByGoodsId(goodsId);
	}
	// 欧武淼 ---------------------------- 
}
