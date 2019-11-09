package com.cappuccino.service;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.cappuccino.pojo.UserAddress;
import com.cappuccino.pojo.UserInfo;
import com.cappuccino.pojo.Usergoods;

@Repository("UserAddressMapperService")
public interface UserAddressMapperService {
	 //----------†ÎÍþ ------Go-------
	public List<UserAddress> getUserAddress(UserInfo user);
	public int addUserAddress(UserAddress userAddress);
	//----------†ÎÍþ ------END-------
}
