package com.ssm.employee.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.employee.dao.UserInfoMapper;
import com.ssm.employee.pojo.UserInfo;
import com.ssm.employee.service.UserInfoService;
@Service
public class UserInfoServiceImpl implements UserInfoService {
	
	@Autowired
	private UserInfoMapper userInfoMapper;	
	
	public void setUserInfoMapper(UserInfoMapper userInfoMapper) {
		this.userInfoMapper = userInfoMapper;
	}
	
	@Override
	public UserInfo getUserByLogin(String name, String pwd) {
		UserInfo db_user = userInfoMapper.getUserByLogin(name, pwd);
		if(db_user == null) {
			return null;
		}
		if(db_user.getUsername().equals(name)) {
			return db_user;
		}
		return null;
	}

}
