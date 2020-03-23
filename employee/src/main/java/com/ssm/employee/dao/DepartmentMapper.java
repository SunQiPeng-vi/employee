package com.ssm.employee.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ssm.employee.pojo.Department;

@Repository
public interface DepartmentMapper {
	public List<Department> getAllDepartments();
}
