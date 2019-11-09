package com.cappuccino.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cappuccino.pojo.Goods;
import com.cappuccino.pojo.Shoppingcart;
import com.cappuccino.pojo.Shops;
import com.cappuccino.pojo.UserInfo;
import com.cappuccino.pojo.Usershops;

public interface UserShopsMapperService {
	public List<Usershops> getUserShopsInfoAll(UserInfo user);

	public int deleteUserShops(int userShopsId);

	public int addUserShops(Usershops usershops);

	public Usershops selectUserShopsByShopsIdAndUserId(Usershops usershops);
}
