package com.cappuccino.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.cappuccino.pojo.Goodstypes;

@Repository("GoodstypesMapper")
public interface GoodstypesMapper {
	public List<Goodstypes> getGoodsTypes_all();
}
