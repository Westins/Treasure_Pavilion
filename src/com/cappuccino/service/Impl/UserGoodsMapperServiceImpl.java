package com.cappuccino.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cappuccino.dao.UserGoodsMapper;
import com.cappuccino.dao.UserInfoMapper;
import com.cappuccino.pojo.Goods;
import com.cappuccino.pojo.UserInfo;
import com.cappuccino.pojo.Usergoods;
import com.cappuccino.service.UserGoodsMapperService;
import com.cappuccino.service.UserInfoMapperService;

@Service
public class UserGoodsMapperServiceImpl implements UserGoodsMapperService{

	@Autowired
	private UserGoodsMapper ugm;

	@Override
	public List<Goods> getUserGoodsInfoAll(UserInfo user) {
		return ugm.getUserGoodsInfoAll(user);
	}

	@Override
	public int addUserGoods(Usergoods usergoods) {
		// TODO Auto-generated method stub 
		return ugm.addUserGoods(usergoods);
	}

	@Override
	public int deleteUserGoods(int usergoodsId) {
		// TODO Auto-generated method stub
		return ugm.deleteUserGoods(usergoodsId);
	}

	@Override
	public Usergoods selectUserGoodsInfoByColorAndModel(Usergoods usergoods) {
		// TODO Auto-generated method stub
		return ugm.selectUserGoodsInfoByColorAndModel(usergoods);
	}
}
