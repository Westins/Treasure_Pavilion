package com.cappuccino.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.cappuccino.pojo.UserAddress;
import com.cappuccino.pojo.UserInfo;
import com.cappuccino.pojo.Usergoods;

@Repository("UserAddressMapper")
public interface UserAddressMapper {
	    //----------†ÎÍþ ------Go-------
		public List<UserAddress> getUserAddress(UserInfo user);
		public int addUserAddress(UserAddress userAddress);
		//----------†ÎÍþ ------END-------
}
