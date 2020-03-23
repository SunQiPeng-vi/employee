package com.ssm.employee.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ssm.employee.pojo.EmployeeInfo;
@Repository
public interface EmployeeInfoMapper {
	public List<EmployeeInfo> findEmps(Map<String, Object> map);
	public EmployeeInfo findEmpByEid(String eid);
	public List<EmployeeInfo> findAllManager();
}
