package com.cappuccino.service;

import java.util.List;

import com.cappuccino.pojo.Goods;
import com.cappuccino.pojo.UserInfo;
import com.cappuccino.pojo.Usergoods;

public interface UserGoodsMapperService {
	public List<Goods> getUserGoodsInfoAll(UserInfo user);

	public int addUserGoods(Usergoods usergoods);

	public int deleteUserGoods(int usergoodsId);

	public Usergoods selectUserGoodsInfoByColorAndModel(Usergoods usergoods);
}
