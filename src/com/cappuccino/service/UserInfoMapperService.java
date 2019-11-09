package com.cappuccino.service;

import java.util.List;
import java.util.Map;

import com.cappuccino.pojo.UserInfo;

public interface UserInfoMapperService {
	//<!-- ŷ��� Go -->
	public UserInfo getAllUser(String userAccount);
	public String Judge(String userAccount,String userPwd);
	public int AddUsers(UserInfo user);
	public List<UserInfo> getUser(String userAccount);
	//<!-- ŷ��� END -->
	// ----- ���� -------	
		public int updateUserInfoWallet(Map<String, Object> map);
		public int updateUserInfoPayWallet(Map<String, Object> map);
		 // ----- ���� -------	
		//==== ŷ��� === new
		public int UpdateUserInfoByUserId(UserInfo user);
		//<!-- ŷ��� END -->
}
