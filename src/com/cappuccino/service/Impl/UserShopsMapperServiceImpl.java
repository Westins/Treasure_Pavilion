package com.cappuccino.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cappuccino.dao.UserGoodsMapper;
import com.cappuccino.dao.UserInfoMapper;
import com.cappuccino.dao.UserShopsMapper;
import com.cappuccino.pojo.Goods;
import com.cappuccino.pojo.Shoppingcart;
import com.cappuccino.pojo.Shops;
import com.cappuccino.pojo.UserInfo;
import com.cappuccino.pojo.Usershops;
import com.cappuccino.service.UserGoodsMapperService;
import com.cappuccino.service.UserInfoMapperService;
import com.cappuccino.service.UserShopsMapperService;

@Service
public class UserShopsMapperServiceImpl implements UserShopsMapperService {

	@Autowired
	private UserShopsMapper usm;

	@Override
	public List<Usershops> getUserShopsInfoAll(UserInfo user) {
		// TODO Auto-generated method stub
		return usm.getUserShopsInfoAll(user);
	}

	@Override
	public int deleteUserShops(int userShopsId) {
		// TODO Auto-generated method stub
		return usm.deleteUserShops(userShopsId);
	}

	@Override
	public int addUserShops(Usershops usershops) {
		// TODO Auto-generated method stub
		return usm.addUserShops(usershops);
	}

	@Override
	public Usershops selectUserShopsByShopsIdAndUserId(Usershops usershops) {
		// TODO Auto-generated method stub
		return usm.selectUserShopsByShopsIdAndUserId(usershops);
	}

}
