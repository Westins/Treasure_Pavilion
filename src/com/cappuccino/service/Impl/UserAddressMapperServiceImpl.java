package com.cappuccino.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cappuccino.dao.UserAddressMapper;
import com.cappuccino.pojo.UserAddress;
import com.cappuccino.pojo.UserInfo;
import com.cappuccino.pojo.Usergoods;
import com.cappuccino.service.UserAddressMapperService;

@Service
public class UserAddressMapperServiceImpl implements UserAddressMapperService {
	@Autowired
	private UserAddressMapper uam;

	@Override
	public List<UserAddress> getUserAddress(UserInfo user) {
		// TODO Auto-generated method stub
		return uam.getUserAddress(user);
	}

	@Override
	public int addUserAddress(UserAddress userAddress) {
		// TODO Auto-generated method stub
		return uam.addUserAddress(userAddress);
	}


}
