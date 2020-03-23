package com.ssm.employee.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ssm.employee.pojo.UserInfo;

@Repository
public interface UserInfoMapper {

	public UserInfo getUserByLogin(@Param("username")String name,@Param("password") String pwd);
}
