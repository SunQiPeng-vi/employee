package com.ssm.employee.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.employee.dao.DepartmentMapper;
import com.ssm.employee.pojo.Department;
import com.ssm.employee.service.DepartmentService;
@Service
public class DepartmentServiceImpl implements DepartmentService {
	@Autowired
	private DepartmentMapper departmentMapper;

	public void setDepartmentMapper(DepartmentMapper departmentMapper) {
		this.departmentMapper = departmentMapper;
	}


	@Override
	public List<Department> getAllDepartments() {
		// TODO Auto-generated method stub
		List<Department> list =departmentMapper.getAllDepartments();
		return list;
	}

}
