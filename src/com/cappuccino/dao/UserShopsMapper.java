package com.cappuccino.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.cappuccino.pojo.Goods;
import com.cappuccino.pojo.Shops;
import com.cappuccino.pojo.UserInfo;
import com.cappuccino.pojo.Usershops;

@Repository("UserShopsMapper")
public interface UserShopsMapper {
	public List<Usershops> getUserShopsInfoAll(UserInfo user);

	public int deleteUserShops(int userShopsId);

	public int addUserShops(Usershops usershops);

	public Usershops selectUserShopsByShopsIdAndUserId(Usershops usershops);
}
