package com.ssm.employee.service;

import com.ssm.employee.pojo.UserInfo;

public interface UserInfoService {
	public UserInfo getUserByLogin(String name,String pwd);
}
