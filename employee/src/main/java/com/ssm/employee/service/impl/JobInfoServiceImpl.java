package com.ssm.employee.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.employee.dao.JobInfoMapper;

import com.ssm.employee.pojo.JobInfo;
import com.ssm.employee.service.JobInfoService;

@Service
public class JobInfoServiceImpl  implements JobInfoService{

	@Autowired
	private JobInfoMapper jobInfoMapper;	
	

	public void setJobInfoMapper(JobInfoMapper jobInfoMapper) {
		this.jobInfoMapper = jobInfoMapper;
	}


	@Override
	public List<JobInfo> getJobInfoByEid(String eid) {
		// TODO Auto-generated method stub
			
		return jobInfoMapper.getJobInfoByEid(eid);
	}

}
