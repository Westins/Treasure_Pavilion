package com.cappuccino.dao;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.cappuccino.pojo.Goods;
import com.cappuccino.pojo.Goodsreview;

@Repository("GoodsMapper")
public interface GoodsMapper{
	public List<Goods> getGoodsInfoByVolume(@Param("all")String all,@Param("desc")String desc); //查询产品销量
	public List<Goods> getGoodsInfoByGoosTime(@Param("all")String all,@Param("desc")String desc); //查询商品上架时间
	public List<Goods> getGoodsInfoByGoodsDiscount(@Param("Discount")String Discount,@Param("all")String all,@Param("desc")String desc);//折扣
	public List<Goods> getGoodsInfo(@Param("GoodsName")String GoodsName);
	public List<Goods> getGoodsInfoByGoodsId(@Param("GoodsId")int GoodsId);
	public List<Goods> getGoodsInfoByGoodsTypes(@Param("GoodsTypeId")int GoodsTypeId);
	public List<Goods> getGoodsInfoByGoodsPrice(@Param("desc")String desc);
	public int addGoodsSalesVolume(Map<String, Object> map);
	public List<Goods> getGoodsInfoByGoodsTypeId(Map<String, Object> map);
	
	// 安卓接口 ---------------------------- 
	public List<Goods> GetgoodsByVolumeLimit12();
	public List<Goodsreview> getGoodsReview(int goodsId);
	// 安卓接口 ---------------------------- 
	//-=====欧武淼=====
		public int AddGoodsByShops(Goods goods);
		public int UpdateByGoodsId(String goodsId);
}
