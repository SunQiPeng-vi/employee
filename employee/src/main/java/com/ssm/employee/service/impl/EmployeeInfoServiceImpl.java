package com.ssm.employee.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.employee.dao.EmployeeInfoMapper;
import com.ssm.employee.pojo.EmployeeInfo;
import com.ssm.employee.service.EmployeeInfoService;
@Service
public class EmployeeInfoServiceImpl implements EmployeeInfoService {
	@Autowired
	private EmployeeInfoMapper employeeInfoMapper;
	
	public void setEmployeeInfoMapper(EmployeeInfoMapper employeeInfoMapper) {
		this.employeeInfoMapper = employeeInfoMapper;
	}

	@Override
	public PageInfo<EmployeeInfo> findEmps(Map<String, Object> map, int pageNo) {
		PageHelper.startPage(pageNo, 10,"e.eid asc" );
		PageInfo<EmployeeInfo> page = new PageInfo<>(employeeInfoMapper.findEmps(map));
		
		return page;
	}
	
	@Override
	public EmployeeInfo findEmpByEid(String eid){
		return employeeInfoMapper.findEmpByEid(eid);
	}
	
	@Override
	public List<EmployeeInfo> findAllManager(){
		return employeeInfoMapper.findAllManager();
	};
}
