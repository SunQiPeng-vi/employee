package com.ssm.employee.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.employee.dao.CompanyMapper;
import com.ssm.employee.pojo.Company;
import com.ssm.employee.service.CompanyService;
@Service
public class CompanyServiceImpl implements CompanyService {
	@Autowired
	private CompanyMapper companyMapper;

	public void setCompanyMapper(CompanyMapper companyMapper) {
		this.companyMapper = companyMapper;
	}

	@Override
	public List<Company> getAllCompanies() {
		// TODO Auto-generated method stub
		List<Company> list =companyMapper.getAllCompanies();
		return list;
	}

}
