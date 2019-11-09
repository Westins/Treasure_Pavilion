package com.cappuccino.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.cappuccino.pojo.Goods;
import com.cappuccino.pojo.UserInfo;
import com.cappuccino.pojo.Usergoods;

@Repository("UserGoodsMapper")
public interface UserGoodsMapper {
	public List<Goods> getUserGoodsInfoAll(UserInfo user);

	public int addUserGoods(Usergoods usergoods);

	public int deleteUserGoods(int usergoodsId);

	public Usergoods selectUserGoodsInfoByColorAndModel(Usergoods usergoods);
}
