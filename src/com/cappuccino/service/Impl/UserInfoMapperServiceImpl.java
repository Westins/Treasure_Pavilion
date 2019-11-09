package com.cappuccino.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cappuccino.dao.UserInfoMapper;
import com.cappuccino.pojo.UserInfo;
import com.cappuccino.service.UserInfoMapperService;

@Service
public class UserInfoMapperServiceImpl implements UserInfoMapperService{

	@Autowired
	private UserInfoMapper uim;

	//<!-- Å·Îäíµ Go -->
	@Override
	public String Judge(String userAccount,String userPwd) {
		String login="";
		System.out.println("login1:"+login);
		System.out.println("userAccount:"+userAccount);
		UserInfo user=uim.getAllUser(userAccount);
		System.out.println("1");
		if(userPwd.equals(user.getUserPwd())||userPwd==user.getUserPwd()) {
			System.out.println("2");
			if(user.getUserState()==1) {
				System.out.println("3");
				login="true";
			}else {
				System.out.println("4");
				login="uidFlase";
			}
		}else {
			System.out.println("5");
			login="pwdFlase";			
		}		
		System.out.println("login2:"+login);
		return login;
	}
	@Override
	public UserInfo getAllUser(String userAccount) {
		// TODO Auto-generated method stub
		return uim.getAllUser(userAccount);
	}

	@Override
	public List<UserInfo> getUser(String userAccount) {
		// TODO Auto-generated method stub
		return uim.getUser(userAccount);
	}
	@Override
	public int AddUsers(UserInfo user) {
		// TODO Auto-generated method stub
		return uim.AddUsers(user);
	}
	//<!-- Å·Îäíµ END -->
	
	// ----- µ¥Íþ -------	
	@Override
	public int updateUserInfoWallet(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return uim.updateUserInfoWallet(map);
	}
	@Override
	public int updateUserInfoPayWallet(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return uim.updateUserInfoPayWallet(map);
	}
	// ----- µ¥Íþ -------	
	@Override
	public int UpdateUserInfoByUserId(UserInfo user) {
		// TODO Auto-generated method stub
		return uim.UpdateUserInfoByUserId(user);
	}
}
