package com.cappuccino.service;

import java.util.List;
import java.util.Map;

import com.cappuccino.pojo.UserInfo;

public interface UserInfoMapperService {
	//<!-- Å·Îäíµ Go -->
	public UserInfo getAllUser(String userAccount);
	public String Judge(String userAccount,String userPwd);
	public int AddUsers(UserInfo user);
	public List<UserInfo> getUser(String userAccount);
	//<!-- Å·Îäíµ END -->
	// ----- µ¥Íþ -------	
		public int updateUserInfoWallet(Map<String, Object> map);
		public int updateUserInfoPayWallet(Map<String, Object> map);
		 // ----- µ¥Íþ -------	
		//==== Å·Îäíµ === new
		public int UpdateUserInfoByUserId(UserInfo user);
		//<!-- Å·Îäíµ END -->
}
