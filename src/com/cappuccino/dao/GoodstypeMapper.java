package com.cappuccino.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.cappuccino.pojo.Goodstype;

@Repository("GoodstypeMapper")
public interface GoodstypeMapper {
	public List<Goodstype> getGoodsType_all();
	public List<Goodstype> getAllType();
}
