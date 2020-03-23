package com.ssm.employee.service;


import java.util.List;
import java.util.Map;

import com.github.pagehelper.PageInfo;
import com.ssm.employee.pojo.EmployeeInfo;

public interface EmployeeInfoService {
	public PageInfo<EmployeeInfo> findEmps(Map<String, Object> map,int pageNo);
	public EmployeeInfo findEmpByEid(String eid);
	public List<EmployeeInfo> findAllManager();
}
