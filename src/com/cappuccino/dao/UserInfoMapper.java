package com.cappuccino.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.cappuccino.pojo.UserAddress;
import com.cappuccino.pojo.UserInfo;

@Repository("UserInfoMapper")
public interface UserInfoMapper {
	// -----ŷ��� --------GO
	public UserInfo getAllUser(String userAccount);
	public List<UserInfo> getUser(String userAccount);
	public int AddUsers(UserInfo user);
	// ===ŷ���= new=
		public int UpdateUserInfoByUserId(UserInfo user);
	// -----ŷ��� --------END
	
    // ----- ���� -------	
	public int updateUserInfoWallet(Map<String, Object> map);
	public int updateUserInfoPayWallet(Map<String, Object> map);
	 // ----- ���� -------	
}
